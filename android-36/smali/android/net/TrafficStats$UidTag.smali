.class Landroid/net/TrafficStats$UidTag;
.super Ljava/lang/Object;
.source "TrafficStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TrafficStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidTag"
.end annotation


# instance fields
.field public blacklist tag:I

.field public blacklist uid:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/TrafficStats$UidTag;->tag:I

    .line 466
    iput v0, p0, Landroid/net/TrafficStats$UidTag;->uid:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/TrafficStats-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/TrafficStats$UidTag;-><init>()V

    return-void
.end method
