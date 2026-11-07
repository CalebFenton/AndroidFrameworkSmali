.class public Landroid/graphics/RegionIterator;
.super Ljava/lang/Object;
.source "RegionIterator.java"


# instance fields
.field private greylist-max-o mNativeIter:J


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Region;)V
    .registers 4
    .param p1, "region"    # Landroid/graphics/Region;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Region;->ni()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/RegionIterator;->nativeConstructor(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    .line 31
    return-void
.end method

.method private static native greylist-max-o nativeConstructor(J)J
.end method

.method private static native greylist-max-o nativeDestructor(J)V
.end method

.method private static native greylist-max-o nativeNext(JLandroid/graphics/Rect;)Z
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    iget-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    invoke-static {v0, v1}, Landroid/graphics/RegionIterator;->nativeDestructor(J)V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    .line 48
    return-void
.end method

.method public final whitelist next(Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 39
    if-eqz p1, :cond_9

    .line 42
    iget-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RegionIterator;->nativeNext(JLandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 40
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The Rect must be provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
