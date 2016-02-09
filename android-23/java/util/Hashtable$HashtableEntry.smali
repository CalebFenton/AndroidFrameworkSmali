.class Ljava/util/Hashtable$HashtableEntry;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashtableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field next:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Hashtable$HashtableEntry;)V
    .locals 0
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 665
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 666
    iput-object p1, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@5
    .line 667
    iput-object p2, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@7
    .line 668
    iput p3, p0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@9
    .line 669
    iput-object p4, p0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@b
    .line 665
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 690
    instance-of v2, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 691
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 693
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 694
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    iget-object v1, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    :cond_1
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 673
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 677
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    #@0
    .prologue
    .line 698
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@b
    move-result v1

    #@c
    xor-int/2addr v0, v1

    #@d
    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 681
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    #@2
    .line 682
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "value == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 684
    :cond_0
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@d
    .line 685
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@f
    .line 686
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 702
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
