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
        "Ljava/util/AbstractSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgets(Ljava/lang/ProcessEnvironment$StringKeySet;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            ">;)V"
        }
    .end annotation

    .line 418
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ProcessEnvironment$Variable;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 421
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 420
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/lang/ProcessEnvironment$StringKeySet$1;

    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringKeySet$1;-><init>(Ljava/lang/ProcessEnvironment$StringKeySet;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 419
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
