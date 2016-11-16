.class public Landroid/icu/impl/UResource$TableSink;
.super Ljava/lang/Object;
.source "UResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TableSink"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getOrCreateArraySink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$ArraySink;
    .locals 1
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 407
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;
    .locals 1
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "initialSize"    # I

    #@0
    .prologue
    .line 421
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public leave()V
    .locals 0

    #@0
    .prologue
    .line 429
    return-void
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 0
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    #@0
    .prologue
    .line 383
    return-void
.end method

.method public putNoFallback(Landroid/icu/impl/UResource$Key;)V
    .locals 0
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    .line 394
    return-void
.end method
