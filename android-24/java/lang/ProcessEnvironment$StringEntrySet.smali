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
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/lang/ProcessEnvironment$StringEntrySet;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

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
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 323
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    #@5
    return-void
.end method

.method private static vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 338
    instance-of v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 339
    nop

    #@5
    nop

    #@6
    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/ProcessEnvironment$StringEntry;->-get0(Ljava/lang/ProcessEnvironment$StringEntry;)Ljava/util/Map$Entry;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 340
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEntrySet$2;

    #@d
    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$2;-><init>(Ljava/lang/Object;)V

    #@10
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

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
    .line 352
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    #@2
    invoke-static {p1}, Ljava/lang/ProcessEnvironment$StringEntrySet;->vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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
    .line 355
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$StringEntrySet;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 356
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    #@6
    nop

    #@7
    nop

    #@8
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 355
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
    .line 358
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

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
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 328
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$1;-><init>(Ljava/lang/ProcessEnvironment$StringEntrySet;)V

    #@5
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    #@2
    invoke-static {p1}, Ljava/lang/ProcessEnvironment$StringEntrySet;->vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

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
    .line 324
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
