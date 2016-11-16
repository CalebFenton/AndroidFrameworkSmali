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
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/lang/ProcessEnvironment$StringEntry;)Ljava/util/Map$Entry;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 305
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    #@5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 313
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$StringEntry;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 314
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    #@6
    nop

    #@7
    nop

    #@8
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    #@a
    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 313
    :goto_0
    return v0

    #@f
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 306
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntry;->getKey()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    #@2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/ProcessEnvironment$Variable;

    #@8
    invoke-virtual {v0}, Ljava/lang/ProcessEnvironment$ExternalData;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 307
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntry;->getValue()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    #@2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    #@8
    invoke-virtual {v0}, Ljava/lang/ProcessEnvironment$ExternalData;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    #@2
    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 308
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$StringEntry;->setValue(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;->e:Ljava/util/Map$Entry;

    #@2
    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Value;->valueOf(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    #@c
    invoke-virtual {v0}, Ljava/lang/ProcessEnvironment$ExternalData;->toString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntry;->getKey()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntry;->getValue()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method
