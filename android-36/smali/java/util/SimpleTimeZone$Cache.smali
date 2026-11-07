.class final Ljava/util/SimpleTimeZone$Cache;
.super Ljava/lang/Object;
.source "SimpleTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/SimpleTimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cache"
.end annotation


# instance fields
.field final blacklist end:J

.field final blacklist start:J

.field final blacklist year:J


# direct methods
.method constructor blacklist <init>(JJJ)V
    .registers 7
    .param p1, "year"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J

    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1199
    iput-wide p1, p0, Ljava/util/SimpleTimeZone$Cache;->year:J

    .line 1200
    iput-wide p3, p0, Ljava/util/SimpleTimeZone$Cache;->start:J

    .line 1201
    iput-wide p5, p0, Ljava/util/SimpleTimeZone$Cache;->end:J

    .line 1202
    return-void
.end method
