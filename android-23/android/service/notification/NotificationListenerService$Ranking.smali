.class public Landroid/service/notification/NotificationListenerService$Ranking;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation


# static fields
.field public static final VISIBILITY_NO_OVERRIDE:I = -0x3e8


# instance fields
.field private mIsAmbient:Z

.field private mKey:Ljava/lang/String;

.field private mMatchesInterruptionFilter:Z

.field private mRank:I

.field private mVisibilityOverride:I


# direct methods
.method static synthetic -wrap0(Landroid/service/notification/NotificationListenerService$Ranking;Ljava/lang/String;IZZI)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "isAmbient"    # Z
    .param p4, "matchesInterruptionFilter"    # Z
    .param p5, "visibilityOverride"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZZI)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 806
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    #@6
    .line 811
    return-void
.end method

.method private populate(Ljava/lang/String;IZZI)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "isAmbient"    # Z
    .param p4, "matchesInterruptionFilter"    # Z
    .param p5, "visibilityOverride"    # I

    #@0
    .prologue
    .line 863
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    #@2
    .line 864
    iput p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    #@4
    .line 865
    iput-boolean p3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    #@6
    .line 866
    iput-boolean p4, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    #@8
    .line 867
    iput p5, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    #@a
    .line 862
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 817
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRank()I
    .locals 1

    #@0
    .prologue
    .line 827
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    #@2
    return v0
.end method

.method public getVisibilityOverride()I
    .locals 1

    #@0
    .prologue
    .line 846
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    #@2
    return v0
.end method

.method public isAmbient()Z
    .locals 1

    #@0
    .prologue
    .line 835
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    #@2
    return v0
.end method

.method public matchesInterruptionFilter()Z
    .locals 1

    #@0
    .prologue
    .line 858
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    #@2
    return v0
.end method
