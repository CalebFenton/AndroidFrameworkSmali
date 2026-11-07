.class Ljava/util/ImmutableCollections$Access;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Access"
.end annotation


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 129
    new-instance v0, Ljava/util/ImmutableCollections$Access$1;

    invoke-direct {v0}, Ljava/util/ImmutableCollections$Access$1;-><init>()V

    invoke-static {v0}, Ljdk/internal/access/SharedSecrets;->setJavaUtilCollectionAccess(Ljdk/internal/access/JavaUtilCollectionAccess;)V

    .line 137
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
