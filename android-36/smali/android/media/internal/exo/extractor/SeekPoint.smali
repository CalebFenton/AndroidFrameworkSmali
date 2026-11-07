.class public final Landroid/media/internal/exo/extractor/SeekPoint;
.super Ljava/lang/Object;
.source "SeekPoint.java"


# static fields
.field public static final blacklist START:Landroid/media/internal/exo/extractor/SeekPoint;


# instance fields
.field public final blacklist position:J

.field public final blacklist timeUs:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 24
    new-instance v0, Landroid/media/internal/exo/extractor/SeekPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    sput-object v0, Landroid/media/internal/exo/extractor/SeekPoint;->START:Landroid/media/internal/exo/extractor/SeekPoint;

    return-void
.end method

.method public constructor blacklist <init>(JJ)V
    .registers 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/SeekPoint;->timeUs:J

    .line 38
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/SeekPoint;->position:J

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/media/internal/exo/extractor/SeekPoint;

    if-eq v3, v2, :cond_10

    goto :goto_23

    .line 54
    :cond_10
    check-cast p1, Landroid/media/internal/exo/extractor/SeekPoint;

    .line 55
    iget-wide v2, p0, Landroid/media/internal/exo/extractor/SeekPoint;->timeUs:J

    iget-wide v4, p1, Landroid/media/internal/exo/extractor/SeekPoint;->timeUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    iget-wide v2, p0, Landroid/media/internal/exo/extractor/SeekPoint;->position:J

    iget-wide p0, p1, Landroid/media/internal/exo/extractor/SeekPoint;->position:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 60
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/SeekPoint;->timeUs:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-wide v1, p0, Landroid/media/internal/exo/extractor/SeekPoint;->position:J

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[timeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/internal/exo/extractor/SeekPoint;->timeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/internal/exo/extractor/SeekPoint;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
