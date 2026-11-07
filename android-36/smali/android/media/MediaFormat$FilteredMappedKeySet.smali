.class abstract Landroid/media/MediaFormat$FilteredMappedKeySet;
.super Ljava/util/AbstractSet;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "FilteredMappedKeySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/media/MediaFormat;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmKeys(Landroid/media/MediaFormat$FilteredMappedKeySet;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaFormat$FilteredMappedKeySet;->mKeys:Ljava/util/Set;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/media/MediaFormat;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2207
    iput-object p1, p0, Landroid/media/MediaFormat$FilteredMappedKeySet;->this$0:Landroid/media/MediaFormat;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2208
    invoke-static {p1}, Landroid/media/MediaFormat;->-$$Nest$fgetmMap(Landroid/media/MediaFormat;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaFormat$FilteredMappedKeySet;->mKeys:Ljava/util/Set;

    .line 2209
    return-void
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 2215
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 2216
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat$FilteredMappedKeySet;->mapItemToKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2217
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat$FilteredMappedKeySet;->keepKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/media/MediaFormat$FilteredMappedKeySet;->mKeys:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    .line 2219
    .end local v0    # "key":Ljava/lang/String;
    :cond_1c
    return v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2266
    new-instance v0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;

    invoke-direct {v0, p0}, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;-><init>(Landroid/media/MediaFormat$FilteredMappedKeySet;)V

    return-object v0
.end method

.method protected abstract blacklist keepKey(Ljava/lang/String;)Z
.end method

.method protected abstract blacklist mapItemToKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract blacklist mapKeyToItem(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 2224
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 2225
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat$FilteredMappedKeySet;->mapItemToKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2226
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat$FilteredMappedKeySet;->keepKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/media/MediaFormat$FilteredMappedKeySet;->mKeys:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2227
    iget-object v1, p0, Landroid/media/MediaFormat$FilteredMappedKeySet;->this$0:Landroid/media/MediaFormat;

    invoke-static {v1}, Landroid/media/MediaFormat;->-$$Nest$fgetmMap(Landroid/media/MediaFormat;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    const/4 v1, 0x1

    return v1

    .line 2231
    .end local v0    # "key":Ljava/lang/String;
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 2271
    iget-object v0, p0, Landroid/media/MediaFormat$FilteredMappedKeySet;->mKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/MediaFormat$FilteredMappedKeySet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/MediaFormat$FilteredMappedKeySet$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaFormat$FilteredMappedKeySet;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
