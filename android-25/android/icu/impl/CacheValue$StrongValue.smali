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
        "Landroid/icu/impl/CacheValue",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 120
    .local p0, "this":Landroid/icu/impl/CacheValue$StrongValue;, "Landroid/icu/impl/CacheValue<TV;>.StrongValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Landroid/icu/impl/CacheValue;-><init>()V

    #@3
    iput-object p1, p0, Landroid/icu/impl/CacheValue$StrongValue;->value:Ljava/lang/Object;

    #@5
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
    .line 122
    .local p0, "this":Landroid/icu/impl/CacheValue$StrongValue;, "Landroid/icu/impl/CacheValue<TV;>.StrongValue<TV;>;"
    iget-object v0, p0, Landroid/icu/impl/CacheValue$StrongValue;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 127
    .local p0, "this":Landroid/icu/impl/CacheValue$StrongValue;, "Landroid/icu/impl/CacheValue<TV;>.StrongValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/icu/impl/CacheValue$StrongValue;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method
