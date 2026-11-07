.class public Landroid/net/wifi/WifiConfiguration$RecentFailure;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentFailure"
.end annotation


# instance fields
.field private greylist-max-o mAssociationStatus:I

.field private blacklist mLastUpdateTimeSinceBootMillis:J


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 3111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3116
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mAssociationStatus:I

    .line 3111
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/WifiConfiguration-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration$RecentFailure;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o clear()V
    .registers 3

    .line 3132
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mAssociationStatus:I

    .line 3133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mLastUpdateTimeSinceBootMillis:J

    .line 3134
    return-void
.end method

.method public greylist-max-o getAssociationStatus()I
    .registers 2

    .line 3144
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mAssociationStatus:I

    return v0
.end method

.method public blacklist getLastUpdateTimeSinceBootMillis()J
    .registers 3

    .line 3151
    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mLastUpdateTimeSinceBootMillis:J

    return-wide v0
.end method

.method public blacklist setAssociationStatus(IJ)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "updateTimeSinceBootMs"    # J

    .line 3125
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mAssociationStatus:I

    .line 3126
    iput-wide p2, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mLastUpdateTimeSinceBootMillis:J

    .line 3127
    return-void
.end method
