.class Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;
.super Ljava/lang/Object;
.source "RandomGeneratorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/random/RandomGeneratorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryMapHolder"
.end annotation


# static fields
.field static final blacklist FACTORY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ServiceLoader$Provider<",
            "+",
            "Ljava/util/random/RandomGenerator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 145
    invoke-static {}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;->createFactoryMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;->FACTORY_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createFactoryMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ServiceLoader$Provider<",
            "+",
            "Ljava/util/random/RandomGenerator;",
            ">;>;"
        }
    .end annotation

    .line 161
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/util/Map$Entry;

    const-class v1, Ljdk/random/L32X64MixRandom;

    new-instance v2, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda0;-><init>()V

    .line 162
    invoke-static {v1, v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;->entryFor(Ljava/lang/Class;Ljava/util/function/Supplier;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljdk/random/L64X128MixRandom;

    new-instance v2, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda1;-><init>()V

    .line 163
    invoke-static {v1, v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;->entryFor(Ljava/lang/Class;Ljava/util/function/Supplier;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljdk/random/L64X128StarStarRandom;

    new-instance v2, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda2;-><init>()V

    .line 164
    invoke-static {v1, v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;->entryFor(Ljava/lang/Class;Ljava/util/function/Supplier;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljdk/random/L64X256MixRandom;

    new-instance v2, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda3;-><init>()V

    .line 165
    invoke-static {v1, v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;->entryFor(Ljava/lang/Class;Ljava/util/function/Supplier;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Ljdk/random/L64X1024MixRandom;

    new-instance v2, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda4;-><init>()V

    .line 166
    invoke-static {v1, v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;->entryFor(Ljava/lang/Class;Ljava/util/function/Supplier;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Ljdk/random/L128X128MixRandom;

    new-instance v2, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda5;-><init>()V

    .line 167
    invoke-static {v1, v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;->entryFor(Ljava/lang/Class;Ljava/util/function/Supplier;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Ljdk/random/L128X256MixRandom;

    new-instance v2, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda6;-><init>()V

    .line 168
    invoke-static {v1, v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;->entryFor(Ljava/lang/Class;Ljava/util/function/Supplier;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Ljdk/random/L128X1024MixRandom;

    new-instance v2, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda7;-><init>()V

    .line 169
    invoke-static {v1, v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;->entryFor(Ljava/lang/Class;Ljava/util/function/Supplier;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Ljdk/random/Xoroshiro128PlusPlus;

    new-instance v2, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda8;-><init>()V

    .line 170
    invoke-static {v1, v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;->entryFor(Ljava/lang/Class;Ljava/util/function/Supplier;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Ljdk/random/Xoshiro256PlusPlus;

    new-instance v2, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$$ExternalSyntheticLambda9;-><init>()V

    .line 171
    invoke-static {v1, v2}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;->entryFor(Ljava/lang/Class;Ljava/util/function/Supplier;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 161
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist entryFor(Ljava/lang/Class;Ljava/util/function/Supplier;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/random/RandomGenerator;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Supplier<",
            "TT;>;)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/ServiceLoader$Provider<",
            "TT;>;>;"
        }
    .end annotation

    .line 177
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$1;

    invoke-direct {v1, p0, p1}, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder$1;-><init>(Ljava/lang/Class;Ljava/util/function/Supplier;)V

    invoke-static {v0, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
