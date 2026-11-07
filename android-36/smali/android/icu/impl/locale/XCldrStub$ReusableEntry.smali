.class Landroid/icu/impl/locale/XCldrStub$ReusableEntry;
.super Ljava/lang/Object;
.source "XCldrStub.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReusableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field greylist-max-o key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field greylist-max-o value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 190
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$ReusableEntry;, "Landroid/icu/impl/locale/XCldrStub$ReusableEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/locale/XCldrStub-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/locale/XCldrStub$ReusableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 195
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$ReusableEntry;, "Landroid/icu/impl/locale/XCldrStub$ReusableEntry<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$ReusableEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 199
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$ReusableEntry;, "Landroid/icu/impl/locale/XCldrStub$ReusableEntry<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$ReusableEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 203
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$ReusableEntry;, "Landroid/icu/impl/locale/XCldrStub$ReusableEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
