.class final Landroid/icu/impl/CacheValue$StrongValue;
.super Landroid/icu/impl/CacheValue;
.source "CacheValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CacheValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StrongValue"
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


# instance fields
.field private greylist-max-o value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Landroid/icu/impl/CacheValue$StrongValue;, "Landroid/icu/impl/CacheValue$StrongValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Landroid/icu/impl/CacheValue;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/CacheValue$StrongValue;->value:Ljava/lang/Object;

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

    .line 125
    .local p0, "this":Landroid/icu/impl/CacheValue$StrongValue;, "Landroid/icu/impl/CacheValue$StrongValue<TV;>;"
    iget-object v0, p0, Landroid/icu/impl/CacheValue$StrongValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 130
    .local p0, "this":Landroid/icu/impl/CacheValue$StrongValue;, "Landroid/icu/impl/CacheValue$StrongValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/icu/impl/CacheValue$StrongValue;->value:Ljava/lang/Object;

    return-object v0
.end method
