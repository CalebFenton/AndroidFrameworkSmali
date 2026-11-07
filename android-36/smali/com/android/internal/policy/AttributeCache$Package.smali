.class public final Lcom/android/internal/policy/AttributeCache$Package;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/AttributeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Package"
.end annotation


# instance fields
.field public final blacklist context:Landroid/content/Context;

.field private final blacklist mMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "[I",
            "Lcom/android/internal/policy/AttributeCache$Entry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMap(Lcom/android/internal/policy/AttributeCache$Package;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/AttributeCache$Package;->mMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/AttributeCache$Package;->mMap:Landroid/util/SparseArray;

    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/AttributeCache$Package;->context:Landroid/content/Context;

    .line 63
    return-void
.end method
