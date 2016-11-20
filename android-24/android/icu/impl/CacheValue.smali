.class public abstract Landroid/icu/impl/CacheValue;
.super Ljava/lang/Object;
.source "CacheValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CacheValue$NullValue;,
        Landroid/icu/impl/CacheValue$SoftValue;,
        Landroid/icu/impl/CacheValue$Strength;,
        Landroid/icu/impl/CacheValue$StrongValue;
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
.field private static final NULL_VALUE:Landroid/icu/impl/CacheValue;

.field private static volatile strength:Landroid/icu/impl/CacheValue$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 51
    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->SOFT:Landroid/icu/impl/CacheValue$Strength;

    #@2
    sput-object v0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    #@4
    .line 54
    new-instance v0, Landroid/icu/impl/CacheValue$NullValue;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v0, v1}, Landroid/icu/impl/CacheValue$NullValue;-><init>(Landroid/icu/impl/CacheValue$NullValue;)V

    #@a
    sput-object v0, Landroid/icu/impl/CacheValue;->NULL_VALUE:Landroid/icu/impl/CacheValue;

    #@c
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    .local p0, "this":Landroid/icu/impl/CacheValue;, "Landroid/icu/impl/CacheValue<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static futureInstancesWillBeStrong()Z
    .locals 2

    #@0
    .prologue
    .line 64
    sget-object v0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    #@2
    sget-object v1, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Landroid/icu/impl/CacheValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Landroid/icu/impl/CacheValue",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 73
    .local p0, "value":Ljava/lang/Object;, "TV;"
    if-nez p0, :cond_0

    #@2
    .line 74
    sget-object v0, Landroid/icu/impl/CacheValue;->NULL_VALUE:Landroid/icu/impl/CacheValue;

    #@4
    return-object v0

    #@5
    .line 76
    :cond_0
    sget-object v0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    #@7
    sget-object v1, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    #@9
    if-ne v0, v1, :cond_1

    #@b
    new-instance v0, Landroid/icu/impl/CacheValue$StrongValue;

    #@d
    invoke-direct {v0, p0}, Landroid/icu/impl/CacheValue$StrongValue;-><init>(Ljava/lang/Object;)V

    #@10
    :goto_0
    return-object v0

    #@11
    :cond_1
    new-instance v0, Landroid/icu/impl/CacheValue$SoftValue;

    #@13
    invoke-direct {v0, p0}, Landroid/icu/impl/CacheValue$SoftValue;-><init>(Ljava/lang/Object;)V

    #@16
    goto :goto_0
.end method

.method public static setStrength(Landroid/icu/impl/CacheValue$Strength;)V
    .locals 0
    .param p0, "strength"    # Landroid/icu/impl/CacheValue$Strength;

    #@0
    .prologue
    .line 59
    sput-object p0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    #@2
    return-void
.end method


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public isNull()Z
    .locals 1

    #@0
    .prologue
    .line 84
    .local p0, "this":Landroid/icu/impl/CacheValue;, "Landroid/icu/impl/CacheValue<TV;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation
.end method
