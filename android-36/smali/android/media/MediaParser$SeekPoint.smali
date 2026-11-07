.class public final Landroid/media/MediaParser$SeekPoint;
.super Ljava/lang/Object;
.source "MediaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekPoint"
.end annotation


# static fields
.field public static final whitelist START:Landroid/media/MediaParser$SeekPoint;


# instance fields
.field public final whitelist position:J

.field public final whitelist timeMicros:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 287
    new-instance v0, Landroid/media/MediaParser$SeekPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/media/MediaParser$SeekPoint;-><init>(JJ)V

    sput-object v0, Landroid/media/MediaParser$SeekPoint;->START:Landroid/media/MediaParser$SeekPoint;

    return-void
.end method

.method private constructor blacklist <init>(JJ)V
    .registers 5

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-wide p1, p0, Landroid/media/MediaParser$SeekPoint;->timeMicros:J

    .line 301
    iput-wide p3, p0, Landroid/media/MediaParser$SeekPoint;->position:J

    return-void
.end method

.method synthetic constructor blacklist <init>(JJLandroid/media/MediaParser-IA;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaParser$SeekPoint;-><init>(JJ)V

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

    .line 315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/media/MediaParser$SeekPoint;

    if-eq v3, v2, :cond_10

    goto :goto_23

    .line 318
    :cond_10
    check-cast p1, Landroid/media/MediaParser$SeekPoint;

    .line 319
    iget-wide v2, p0, Landroid/media/MediaParser$SeekPoint;->timeMicros:J

    iget-wide v4, p1, Landroid/media/MediaParser$SeekPoint;->timeMicros:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    iget-wide v2, p0, Landroid/media/MediaParser$SeekPoint;->position:J

    iget-wide p0, p1, Landroid/media/MediaParser$SeekPoint;->position:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 324
    iget-wide v0, p0, Landroid/media/MediaParser$SeekPoint;->timeMicros:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 325
    iget-wide v1, p0, Landroid/media/MediaParser$SeekPoint;->position:J

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[timeMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/MediaParser$SeekPoint;->timeMicros:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/MediaParser$SeekPoint;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
