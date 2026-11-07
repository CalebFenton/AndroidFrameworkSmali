.class public final Landroid/media/MediaParser$SeekMap;
.super Ljava/lang/Object;
.source "MediaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekMap"
.end annotation


# static fields
.field public static final blacklist DUMMY:Landroid/media/MediaParser$SeekMap;

.field public static final whitelist UNKNOWN_DURATION:I = -0x80000000


# instance fields
.field private final blacklist mExoPlayerSeekMap:Landroid/media/internal/exo/extractor/SeekMap;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 223
    new-instance v0, Landroid/media/MediaParser$SeekMap;

    new-instance v1, Landroid/media/MediaParser$DummyExoPlayerSeekMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/MediaParser$DummyExoPlayerSeekMap;-><init>(Landroid/media/MediaParser-IA;)V

    invoke-direct {v0, v1}, Landroid/media/MediaParser$SeekMap;-><init>(Landroid/media/internal/exo/extractor/SeekMap;)V

    sput-object v0, Landroid/media/MediaParser$SeekMap;->DUMMY:Landroid/media/MediaParser$SeekMap;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/internal/exo/extractor/SeekMap;)V
    .registers 2

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Landroid/media/MediaParser$SeekMap;->mExoPlayerSeekMap:Landroid/media/internal/exo/extractor/SeekMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/internal/exo/extractor/SeekMap;Landroid/media/MediaParser-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaParser$SeekMap;-><init>(Landroid/media/internal/exo/extractor/SeekMap;)V

    return-void
.end method


# virtual methods
.method public whitelist getDurationMicros()J
    .registers 5

    .line 241
    iget-object p0, p0, Landroid/media/MediaParser$SeekMap;->mExoPlayerSeekMap:Landroid/media/internal/exo/extractor/SeekMap;

    invoke-interface {p0}, Landroid/media/internal/exo/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_10

    return-wide v0

    :cond_10
    const-wide/32 v0, -0x80000000

    return-wide v0
.end method

.method public whitelist getSeekPoints(J)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Landroid/media/MediaParser$SeekPoint;",
            "Landroid/media/MediaParser$SeekPoint;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object p0, p0, Landroid/media/MediaParser$SeekMap;->mExoPlayerSeekMap:Landroid/media/internal/exo/extractor/SeekMap;

    invoke-interface {p0, p1, p2}, Landroid/media/internal/exo/extractor/SeekMap;->getSeekPoints(J)Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    move-result-object p0

    .line 261
    new-instance p1, Landroid/util/Pair;

    iget-object p2, p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;->first:Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-static {p2}, Landroid/media/MediaParser;->-$$Nest$smtoSeekPoint(Landroid/media/internal/exo/extractor/SeekPoint;)Landroid/media/MediaParser$SeekPoint;

    move-result-object p2

    iget-object p0, p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;->second:Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-static {p0}, Landroid/media/MediaParser;->-$$Nest$smtoSeekPoint(Landroid/media/internal/exo/extractor/SeekPoint;)Landroid/media/MediaParser$SeekPoint;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public whitelist isSeekable()Z
    .registers 1

    .line 233
    iget-object p0, p0, Landroid/media/MediaParser$SeekMap;->mExoPlayerSeekMap:Landroid/media/internal/exo/extractor/SeekMap;

    invoke-interface {p0}, Landroid/media/internal/exo/extractor/SeekMap;->isSeekable()Z

    move-result p0

    return p0
.end method
