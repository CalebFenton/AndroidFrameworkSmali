.class public Landroid/icu/impl/UResource$ArraySink;
.super Ljava/lang/Object;
.source "UResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArraySink"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getOrCreateArraySink(II)Landroid/icu/impl/UResource$ArraySink;
    .locals 1
    .param p1, "index"    # I
    .param p2, "size"    # I

    #@0
    .prologue
    .line 344
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getOrCreateTableSink(II)Landroid/icu/impl/UResource$TableSink;
    .locals 1
    .param p1, "index"    # I
    .param p2, "initialSize"    # I

    #@0
    .prologue
    .line 358
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public leave()V
    .locals 0

    #@0
    .prologue
    .line 366
    return-void
.end method

.method public put(ILandroid/icu/impl/UResource$Value;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    #@0
    .prologue
    .line 331
    return-void
.end method
