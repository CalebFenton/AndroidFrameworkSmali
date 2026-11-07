.class Ljava/lang/ProcessEnvironment$StringEntrySet;
.super Ljava/util/AbstractSet;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final blacklist s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgets(Ljava/lang/ProcessEnvironment$StringEntrySet;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;>;)V"
        }
    .end annotation

    .line 349
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    return-void
.end method

.method private static blacklist vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation

    .line 364
    instance-of v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;

    if-eqz v0, :cond_c

    .line 365
    move-object v0, p0

    check-cast v0, Ljava/lang/ProcessEnvironment$StringEntry;

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringEntry;->-$$Nest$fgete(Ljava/lang/ProcessEnvironment$StringEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 366
    :cond_c
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEntrySet$2;

    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 352
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$StringEntrySet;->vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 381
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$StringEntrySet;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Ljava/lang/ProcessEnvironment$StringEntrySet;

    iget-object v1, v1, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    .line 382
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 381
    :goto_14
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 384
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 351
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

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
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 354
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;

    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$1;-><init>(Ljava/lang/ProcessEnvironment$StringEntrySet;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$StringEntrySet;->vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 350
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
