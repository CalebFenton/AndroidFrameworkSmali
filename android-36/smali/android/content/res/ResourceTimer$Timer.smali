.class Landroid/content/res/ResourceTimer$Timer;
.super Ljava/lang/Object;
.source "ResourceTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourceTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Timer"
.end annotation


# instance fields
.field blacklist count:I

.field blacklist largest:[I

.field blacklist maxtime:I

.field blacklist mintime:I

.field blacklist percentile:[I

.field blacklist total:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/ResourceTimer-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/res/ResourceTimer$Timer;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 103
    iget v0, p0, Landroid/content/res/ResourceTimer$Timer;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/res/ResourceTimer$Timer;->total:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroid/content/res/ResourceTimer$Timer;->mintime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/content/res/ResourceTimer$Timer;->maxtime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d:%d:%d:%d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
