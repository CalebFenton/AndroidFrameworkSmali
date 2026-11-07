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
        "Ljava/util/AbstractCollection<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetc(Ljava/lang/ProcessEnvironment$StringValues;)Ljava/util/Collection;
    .registers 1

    iget-object p0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;)V"
        }
    .end annotation

    .line 391
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 394
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 410
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$StringValues;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    move-object v1, p1

    check-cast v1, Ljava/lang/ProcessEnvironment$StringValues;

    iget-object v1, v1, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    .line 411
    invoke-interface {v0, v1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 410
    :goto_14
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 413
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 393
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

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

    .line 396
    new-instance v0, Ljava/lang/ProcessEnvironment$StringValues$1;

    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringValues$1;-><init>(Ljava/lang/ProcessEnvironment$StringValues;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 392
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
