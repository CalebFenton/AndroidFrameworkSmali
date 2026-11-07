.class public abstract Landroid/icu/impl/CacheValue;
.super Ljava/lang/Object;
.source "CacheValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CacheValue$Strength;,
        Landroid/icu/impl/CacheValue$StrongValue;,
        Landroid/icu/impl/CacheValue$SoftValue;,
        Landroid/icu/impl/CacheValue$NullValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final greylist-max-o NULL_VALUE:Landroid/icu/impl/CacheValue;

.field private static volatile greylist-max-o strength:Landroid/icu/impl/CacheValue$Strength;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 54
    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->SOFT:Landroid/icu/impl/CacheValue$Strength;

    sput-object v0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    .line 57
    new-instance v0, Landroid/icu/impl/CacheValue$NullValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/CacheValue$NullValue;-><init>(Landroid/icu/impl/CacheValue-IA;)V

    sput-object v0, Landroid/icu/impl/CacheValue;->NULL_VALUE:Landroid/icu/impl/CacheValue;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    .local p0, "this":Landroid/icu/impl/CacheValue;, "Landroid/icu/impl/CacheValue<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist futureInstancesWillBeStrong()Z
    .registers 2

    .line 67
    sget-object v0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    sget-object v1, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/icu/impl/CacheValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Landroid/icu/impl/CacheValue<",
            "TV;>;"
        }
    .end annotation

    .line 76
    .local p0, "value":Ljava/lang/Object;, "TV;"
    if-nez p0, :cond_5

    .line 77
    sget-object v0, Landroid/icu/impl/CacheValue;->NULL_VALUE:Landroid/icu/impl/CacheValue;

    return-object v0

    .line 79
    :cond_5
    sget-object v0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    sget-object v1, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    if-ne v0, v1, :cond_11

    new-instance v0, Landroid/icu/impl/CacheValue$StrongValue;

    invoke-direct {v0, p0}, Landroid/icu/impl/CacheValue$StrongValue;-><init>(Ljava/lang/Object;)V

    goto :goto_16

    :cond_11
    new-instance v0, Landroid/icu/impl/CacheValue$SoftValue;

    invoke-direct {v0, p0}, Landroid/icu/impl/CacheValue$SoftValue;-><init>(Ljava/lang/Object;)V

    :goto_16
    return-object v0
.end method

.method public static blacklist setStrength(Landroid/icu/impl/CacheValue$Strength;)V
    .registers 1
    .param p0, "strength"    # Landroid/icu/impl/CacheValue$Strength;

    .line 62
    sput-object p0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    return-void
.end method


# virtual methods
.method public abstract blacklist get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public blacklist isNull()Z
    .registers 2

    .line 87
    .local p0, "this":Landroid/icu/impl/CacheValue;, "Landroid/icu/impl/CacheValue<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation
.end method
