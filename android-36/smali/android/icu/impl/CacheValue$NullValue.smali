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
        "Landroid/icu/impl/CacheValue<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 106
    .local p0, "this":Landroid/icu/impl/CacheValue$NullValue;, "Landroid/icu/impl/CacheValue$NullValue<TV;>;"
    invoke-direct {p0}, Landroid/icu/impl/CacheValue;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/CacheValue-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/CacheValue$NullValue;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 110
    .local p0, "this":Landroid/icu/impl/CacheValue$NullValue;, "Landroid/icu/impl/CacheValue$NullValue<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isNull()Z
    .registers 2

    .line 108
    .local p0, "this":Landroid/icu/impl/CacheValue$NullValue;, "Landroid/icu/impl/CacheValue$NullValue<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 113
    .local p0, "this":Landroid/icu/impl/CacheValue$NullValue;, "Landroid/icu/impl/CacheValue$NullValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_4

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_4
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v1, "resetting a null value to a non-null value"

    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
