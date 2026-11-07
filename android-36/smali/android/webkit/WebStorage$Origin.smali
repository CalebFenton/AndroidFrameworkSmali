.class public Landroid/webkit/WebStorage$Origin;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Origin"
.end annotation


# instance fields
.field private greylist-max-o mOrigin:Ljava/lang/String;

.field private greylist-max-o mQuota:J

.field private greylist-max-o mUsage:J


# direct methods
.method protected constructor whitelist <init>(Ljava/lang/String;JJ)V
    .registers 8
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "quota"    # J
    .param p4, "usage"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 60
    iput-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    .line 65
    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 66
    iput-wide p2, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 67
    iput-wide p4, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    .line 68
    return-void
.end method


# virtual methods
.method public whitelist getOrigin()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getQuota()J
    .registers 3

    .line 92
    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    return-wide v0
.end method

.method public whitelist getUsage()J
    .registers 3

    .line 102
    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    return-wide v0
.end method
