.class public Landroid/graphics/RegionIterator;
.super Ljava/lang/Object;
.source "RegionIterator.java"


# instance fields
.field private final mNativeIter:J


# direct methods
.method public constructor <init>(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    invoke-virtual {p1}, Landroid/graphics/Region;->ni()J

    #@6
    move-result-wide v0

    #@7
    invoke-static {v0, v1}, Landroid/graphics/RegionIterator;->nativeConstructor(J)J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    #@d
    .line 28
    return-void
.end method

.method private static native nativeConstructor(J)J
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeNext(JLandroid/graphics/Rect;)Z
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    iget-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/RegionIterator;->nativeDestructor(J)V

    #@5
    .line 44
    return-void
.end method

.method public final next(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 38
    if-nez p1, :cond_0

    #@2
    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "The Rect must be provided"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 41
    :cond_0
    iget-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    #@d
    invoke-static {v0, v1, p1}, Landroid/graphics/RegionIterator;->nativeNext(JLandroid/graphics/Rect;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method
