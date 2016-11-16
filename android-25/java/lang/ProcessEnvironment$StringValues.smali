.class Ljava/lang/ProcessEnvironment$StringValues;
.super Ljava/util/AbstractCollection;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/lang/ProcessEnvironment$StringValues;)Ljava/util/Collection;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 365
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    #@5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 368
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    #@5
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    #@2
    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 384
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$StringValues;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 385
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    #@6
    nop

    #@7
    nop

    #@8
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    #@a
    invoke-interface {v0, v1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 384
    :goto_0
    return v0

    #@f
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

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
    .line 370
    new-instance v0, Ljava/lang/ProcessEnvironment$StringValues$1;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringValues$1;-><init>(Ljava/lang/ProcessEnvironment$StringValues;)V

    #@5
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    #@2
    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
