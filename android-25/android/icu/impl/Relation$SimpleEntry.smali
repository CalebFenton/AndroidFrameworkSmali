.class Landroid/icu/impl/Relation$SimpleEntry;
.super Ljava/lang/Object;
.source "Relation.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Relation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleEntry"
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
.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
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
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 234
    .local p0, "this":Landroid/icu/impl/Relation$SimpleEntry;, "Landroid/icu/impl/Relation<TK;TV;>.SimpleEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 235
    iput-object p1, p0, Landroid/icu/impl/Relation$SimpleEntry;->key:Ljava/lang/Object;

    #@5
    .line 236
    iput-object p2, p0, Landroid/icu/impl/Relation$SimpleEntry;->value:Ljava/lang/Object;

    #@7
    .line 234
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 239
    .local p0, "this":Landroid/icu/impl/Relation$SimpleEntry;, "Landroid/icu/impl/Relation<TK;TV;>.SimpleEntry<TK;TV;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 240
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/icu/impl/Relation$SimpleEntry;->key:Ljava/lang/Object;

    #@9
    .line 241
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/icu/impl/Relation$SimpleEntry;->value:Ljava/lang/Object;

    #@f
    .line 239
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    .local p0, "this":Landroid/icu/impl/Relation$SimpleEntry;, "Landroid/icu/impl/Relation<TK;TV;>.SimpleEntry<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation$SimpleEntry;->key:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 249
    .local p0, "this":Landroid/icu/impl/Relation$SimpleEntry;, "Landroid/icu/impl/Relation<TK;TV;>.SimpleEntry<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation$SimpleEntry;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 253
    .local p0, "this":Landroid/icu/impl/Relation$SimpleEntry;, "Landroid/icu/impl/Relation<TK;TV;>.SimpleEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/icu/impl/Relation$SimpleEntry;->value:Ljava/lang/Object;

    #@2
    .line 254
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Landroid/icu/impl/Relation$SimpleEntry;->value:Ljava/lang/Object;

    #@4
    .line 255
    return-object v0
.end method
