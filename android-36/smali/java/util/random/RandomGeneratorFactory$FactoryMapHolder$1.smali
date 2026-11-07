.class Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$1;
.super Ljava/lang/Object;
.source "RandomGeneratorFactory.java"

# interfaces
.implements Ljava/util/ServiceLoader$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;->entryFor(Ljava/lang/Class;Ljava/util/function/Supplier;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ServiceLoader$Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$clazz:Ljava/lang/Class;

.field final synthetic blacklist val$supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;Ljava/util/function/Supplier;)V
    .registers 3

    .line 177
    iput-object p1, p0, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$1;->val$clazz:Ljava/lang/Class;

    iput-object p2, p0, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$1;->val$supplier:Ljava/util/function/Supplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 177
    invoke-virtual {p0}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$1;->get()Ljava/util/random/RandomGenerator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get()Ljava/util/random/RandomGenerator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$1;->val$supplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/random/RandomGenerator;

    return-object v0
.end method

.method public whitelist test-api type()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$1;->val$clazz:Ljava/lang/Class;

    return-object v0
.end method
