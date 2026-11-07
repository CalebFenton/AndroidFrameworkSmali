.class Ljava/util/ImmutableCollections$Access$1;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljdk/internal/access/JavaUtilCollectionAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections$Access;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist listFromTrustedArray([Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 131
    invoke-static {p1}, Ljava/util/ImmutableCollections;->listFromTrustedArray([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist listFromTrustedArrayNullsAllowed([Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 134
    invoke-static {p1}, Ljava/util/ImmutableCollections;->listFromTrustedArrayNullsAllowed([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
