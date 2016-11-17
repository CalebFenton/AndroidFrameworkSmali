.class final Landroid/icu/impl/CacheValue$NullValue;
.super Landroid/icu/impl/CacheValue;
.source "CacheValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CacheValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/icu/impl/CacheValue",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 103
    .local p0, "this":Landroid/icu/impl/CacheValue$NullValue;, "Landroid/icu/impl/CacheValue<TV;>.NullValue<TV;>;"
    invoke-direct {p0}, Landroid/icu/impl/CacheValue;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/CacheValue$NullValue;)V
    .locals 0

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/CacheValue$NullValue;, "Landroid/icu/impl/CacheValue<TV;>.NullValue<TV;>;"
    invoke-direct {p0}, Landroid/icu/impl/CacheValue$NullValue;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 107
    .local p0, "this":Landroid/icu/impl/CacheValue$NullValue;, "Landroid/icu/impl/CacheValue<TV;>.NullValue<TV;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public isNull()Z
    .locals 1

    #@0
    .prologue
    .line 105
    .local p0, "this":Landroid/icu/impl/CacheValue$NullValue;, "Landroid/icu/impl/CacheValue<TV;>.NullValue<TV;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/CacheValue$NullValue;, "Landroid/icu/impl/CacheValue<TV;>.NullValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    #@1
    .line 110
    if-eqz p1, :cond_0

    #@3
    .line 111
    new-instance v0, Landroid/icu/util/ICUException;

    #@5
    const-string/jumbo v1, "resetting a null value to a non-null value"

    #@8
    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 113
    :cond_0
    return-object v0
.end method
