.class Ljava/lang/ProcessEnvironment$StringEntry;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist e:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgete(Ljava/lang/ProcessEnvironment$StringEntry;)Ljava/util/Map$Entry;
    .registers 1

    iget-object p0, p0, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/Map$Entry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;)V"
        }
    .end annotation

    .line 331
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 339
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$StringEntry;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    move-object v1, p1

    check-cast v1, Ljava/lang/ProcessEnvironment$StringEntry;

    iget-object v1, v1, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    .line 340
    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 339
    :goto_14
    return v0
.end method

.method public bridge synthetic whitelist test-api getKey()Ljava/lang/Object;
    .registers 2

    .line 327
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .registers 2

    .line 332
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessEnvironment$Variable;

    invoke-virtual {v0}, Ljava/lang/ProcessEnvironment$Variable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getValue()Ljava/lang/Object;
    .registers 2

    .line 327
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntry;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/String;
    .registers 2

    .line 333
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    invoke-virtual {v0}, Ljava/lang/ProcessEnvironment$Value;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 342
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 327
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$StringEntry;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "newValue"    # Ljava/lang/String;

    .line 335
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Value;->valueOf(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    invoke-virtual {v0}, Ljava/lang/ProcessEnvironment$Value;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntry;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
