.class public Landroid/drm/ProcessedData;
.super Ljava/lang/Object;
.source "ProcessedData.java"


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private final mData:[B

.field private mSubscriptionId:Ljava/lang/String;


# direct methods
.method constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "accountId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    const-string/jumbo v0, "_NO_USER"

    #@6
    iput-object v0, p0, Landroid/drm/ProcessedData;->mAccountId:Ljava/lang/String;

    #@8
    .line 30
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Landroid/drm/ProcessedData;->mSubscriptionId:Ljava/lang/String;

    #@d
    .line 39
    iput-object p1, p0, Landroid/drm/ProcessedData;->mData:[B

    #@f
    .line 40
    iput-object p2, p0, Landroid/drm/ProcessedData;->mAccountId:Ljava/lang/String;

    #@11
    .line 38
    return-void
.end method

.method constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "subscriptionId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    const-string/jumbo v0, "_NO_USER"

    #@6
    iput-object v0, p0, Landroid/drm/ProcessedData;->mAccountId:Ljava/lang/String;

    #@8
    .line 30
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Landroid/drm/ProcessedData;->mSubscriptionId:Ljava/lang/String;

    #@d
    .line 51
    iput-object p1, p0, Landroid/drm/ProcessedData;->mData:[B

    #@f
    .line 52
    iput-object p2, p0, Landroid/drm/ProcessedData;->mAccountId:Ljava/lang/String;

    #@11
    .line 53
    iput-object p3, p0, Landroid/drm/ProcessedData;->mSubscriptionId:Ljava/lang/String;

    #@13
    .line 50
    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/drm/ProcessedData;->mAccountId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getData()[B
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid/drm/ProcessedData;->mData:[B

    #@2
    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/drm/ProcessedData;->mSubscriptionId:Ljava/lang/String;

    #@2
    return-object v0
.end method
