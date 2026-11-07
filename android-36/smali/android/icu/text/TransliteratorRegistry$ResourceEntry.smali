.class Landroid/icu/text/TransliteratorRegistry$ResourceEntry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceEntry"
.end annotation


# instance fields
.field public final greylist-max-o direction:I

.field private greylist-max-o resource:Ljava/lang/String;

.field private final blacklist resourceSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "d"    # I

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->resource:Ljava/lang/String;

    .line 233
    iput p2, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->direction:I

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->resourceSupplier:Ljava/util/function/Supplier;

    .line 235
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/Supplier;I)V
    .registers 3
    .param p2, "dir"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 237
    .local p1, "resourceSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->resourceSupplier:Ljava/util/function/Supplier;

    .line 239
    iput p2, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->direction:I

    .line 240
    return-void
.end method


# virtual methods
.method public blacklist getResource()Ljava/lang/String;
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->resourceSupplier:Ljava/util/function/Supplier;

    if-nez v0, :cond_7

    .line 244
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->resource:Ljava/lang/String;

    return-object v0

    .line 247
    :cond_7
    monitor-enter p0

    .line 248
    :try_start_8
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->resource:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 249
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->resource:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 252
    :cond_10
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->resourceSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    .local v0, "str":Ljava/lang/String;
    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->resource:Ljava/lang/String;

    .line 254
    monitor-exit p0

    return-object v0

    .line 255
    .end local v0    # "str":Ljava/lang/String;
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v0
.end method
