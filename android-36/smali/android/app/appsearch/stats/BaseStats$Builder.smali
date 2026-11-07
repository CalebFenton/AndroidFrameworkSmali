.class public Landroid/app/appsearch/stats/BaseStats$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/stats/BaseStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Landroid/app/appsearch/stats/BaseStats$Builder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mBuilderTypeInstance:Landroid/app/appsearch/stats/BaseStats$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBuilderType;"
        }
    .end annotation
.end field

.field blacklist mEnabledFeatures:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Landroid/app/appsearch/stats/BaseStats$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/stats/BaseStats$Builder;

    .line 5
    .line 6
    return-void
.end method

.method private blacklist modifyEnabledFeature(IZ)V
    .registers 7

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_c

    .line 4
    .line 5
    iget-wide v2, p0, Landroid/app/appsearch/stats/BaseStats$Builder;->mEnabledFeatures:J

    .line 6
    .line 7
    shl-long p1, v0, p1

    .line 8
    .line 9
    or-long/2addr p1, v2

    .line 10
    iput-wide p1, p0, Landroid/app/appsearch/stats/BaseStats$Builder;->mEnabledFeatures:J

    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    iget-wide v2, p0, Landroid/app/appsearch/stats/BaseStats$Builder;->mEnabledFeatures:J

    .line 14
    .line 15
    shl-long p1, v0, p1

    .line 16
    .line 17
    not-long p1, p1

    .line 18
    and-long/2addr p1, v2

    .line 19
    iput-wide p1, p0, Landroid/app/appsearch/stats/BaseStats$Builder;->mEnabledFeatures:J

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/appsearch/stats/BaseStats;
    .registers 2

    .line 1
    new-instance v0, Landroid/app/appsearch/stats/BaseStats;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/app/appsearch/stats/BaseStats;-><init>(Landroid/app/appsearch/stats/BaseStats$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public blacklist setLaunchVMEnabled(Z)Landroid/app/appsearch/stats/BaseStats$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBuilderType;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/app/appsearch/stats/BaseStats$Builder;->modifyEnabledFeature(IZ)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroid/app/appsearch/stats/BaseStats$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/stats/BaseStats$Builder;

    .line 6
    .line 7
    return-object p0
.end method
