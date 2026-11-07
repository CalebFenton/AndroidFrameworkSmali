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
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field greylist-max-o key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field greylist-max-o value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 239
    .local p0, "this":Landroid/icu/impl/Relation$SimpleEntry;, "Landroid/icu/impl/Relation$SimpleEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Landroid/icu/impl/Relation$SimpleEntry;->key:Ljava/lang/Object;

    .line 241
    iput-object p2, p0, Landroid/icu/impl/Relation$SimpleEntry;->value:Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 244
    .local p0, "this":Landroid/icu/impl/Relation$SimpleEntry;, "Landroid/icu/impl/Relation$SimpleEntry<TK;TV;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Relation$SimpleEntry;->key:Ljava/lang/Object;

    .line 246
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Relation$SimpleEntry;->value:Ljava/lang/Object;

    .line 247
    return-void
.end method


# virtual methods
.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 251
    .local p0, "this":Landroid/icu/impl/Relation$SimpleEntry;, "Landroid/icu/impl/Relation$SimpleEntry<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation$SimpleEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 256
    .local p0, "this":Landroid/icu/impl/Relation$SimpleEntry;, "Landroid/icu/impl/Relation$SimpleEntry<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation$SimpleEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 261
    .local p0, "this":Landroid/icu/impl/Relation$SimpleEntry;, "Landroid/icu/impl/Relation$SimpleEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/icu/impl/Relation$SimpleEntry;->value:Ljava/lang/Object;

    .line 262
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Landroid/icu/impl/Relation$SimpleEntry;->value:Ljava/lang/Object;

    .line 263
    return-object v0
.end method
