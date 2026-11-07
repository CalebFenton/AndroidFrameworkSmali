.class Landroid/widget/RemoteViews$3;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final blacklist mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mApplyFlags:I

.field blacklist mHasDrawInstructions:Z

.field blacklist mIdealSize:Landroid/util/SizeF;

.field blacklist mIsRoot:Z

.field blacklist mLandscapeViews:Landroid/widget/RemoteViews$PendingResources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mLayoutResName:Ljava/lang/String;

.field blacklist mLightBackgroundResName:Ljava/lang/String;

.field blacklist mMode:I

.field blacklist mPackageName:Ljava/lang/String;

.field blacklist mPopulateRemoteCollectionCache:Landroid/widget/RemoteViews$PendingResources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$RemoteCollectionCache;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPortraitViews:Landroid/widget/RemoteViews$PendingResources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mProviderInstanceId:J

.field final blacklist mRv:Landroid/widget/RemoteViews;

.field final blacklist mSizedRemoteViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mUid:Ljava/lang/Integer;

.field blacklist mViewResName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>()V
    .registers 5

    .line 10229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10230
    new-instance v0, Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews-IA;)V

    iput-object v0, p0, Landroid/widget/RemoteViews$3;->mRv:Landroid/widget/RemoteViews;

    .line 10231
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$3;->mMode:I

    .line 10232
    iput v0, p0, Landroid/widget/RemoteViews$3;->mApplyFlags:I

    .line 10233
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/RemoteViews$3;->mProviderInstanceId:J

    .line 10234
    iput-object v1, p0, Landroid/widget/RemoteViews$3;->mPackageName:Ljava/lang/String;

    .line 10235
    iput-object v1, p0, Landroid/widget/RemoteViews$3;->mUid:Ljava/lang/Integer;

    .line 10236
    iput-object v1, p0, Landroid/widget/RemoteViews$3;->mIdealSize:Landroid/util/SizeF;

    .line 10237
    iput-object v1, p0, Landroid/widget/RemoteViews$3;->mLayoutResName:Ljava/lang/String;

    .line 10238
    iput-object v1, p0, Landroid/widget/RemoteViews$3;->mLightBackgroundResName:Ljava/lang/String;

    .line 10239
    iput-object v1, p0, Landroid/widget/RemoteViews$3;->mViewResName:Ljava/lang/String;

    .line 10240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews$3;->mActions:Ljava/util/List;

    .line 10241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews$3;->mSizedRemoteViews:Ljava/util/List;

    .line 10242
    iput-object v1, p0, Landroid/widget/RemoteViews$3;->mLandscapeViews:Landroid/widget/RemoteViews$PendingResources;

    .line 10243
    iput-object v1, p0, Landroid/widget/RemoteViews$3;->mPortraitViews:Landroid/widget/RemoteViews$PendingResources;

    .line 10244
    iput-object v1, p0, Landroid/widget/RemoteViews$3;->mPopulateRemoteCollectionCache:Landroid/widget/RemoteViews$PendingResources;

    .line 10245
    iput-boolean v0, p0, Landroid/widget/RemoteViews$3;->mIsRoot:Z

    .line 10246
    iput-boolean v0, p0, Landroid/widget/RemoteViews$3;->mHasDrawInstructions:Z

    return-void
.end method
