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
.field private mOrigin:Ljava/lang/String;

.field private mQuota:J

.field private mUsage:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "quota"    # J
    .param p4, "usage"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 65
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    #@8
    .line 66
    iput-wide v2, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    #@a
    .line 67
    iput-wide v2, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    #@c
    .line 72
    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    #@e
    .line 73
    iput-wide p2, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    #@10
    .line 74
    iput-wide p4, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    #@12
    .line 71
    return-void
.end method


# virtual methods
.method public getOrigin()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getQuota()J
    .locals 2

    #@0
    .prologue
    .line 99
    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    #@2
    return-wide v0
.end method

.method public getUsage()J
    .locals 2

    #@0
    .prologue
    .line 109
    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    #@2
    return-wide v0
.end method
