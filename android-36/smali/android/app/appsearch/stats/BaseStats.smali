.class public Landroid/app/appsearch/stats/BaseStats;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/stats/BaseStats$Builder;
    }
.end annotation


# static fields
.field private static final blacklist LAUNCH_VM:I


# instance fields
.field private final blacklist mEnabledFeatures:J


# direct methods
.method protected constructor blacklist <init>(Landroid/app/appsearch/stats/BaseStats$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/stats/BaseStats$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-wide v0, p1, Landroid/app/appsearch/stats/BaseStats$Builder;->mEnabledFeatures:J

    .line 8
    .line 9
    iput-wide v0, p0, Landroid/app/appsearch/stats/BaseStats;->mEnabledFeatures:J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public blacklist getEnabledFeatures()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/stats/BaseStats;->mEnabledFeatures:J

    .line 2
    .line 3
    return-wide v0
.end method
