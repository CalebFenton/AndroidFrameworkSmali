.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$MutablePair;,
        Landroid/widget/RemoteViews$RemoteView;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$OnClickHandler;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$SetOnClickFillInIntent;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$SetOnClickPendingIntent;,
        Landroid/widget/RemoteViews$SetDrawableParameters;,
        Landroid/widget/RemoteViews$ReflectionActionWithoutParams;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$ViewGroupAction;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;,
        Landroid/widget/RemoteViews$MemoryUsageCounter;,
        Landroid/widget/RemoteViews$1;,
        Landroid/widget/RemoteViews$2;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

.field static final EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field private static final MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final MODE_NORMAL:I

.field private static final sInvokeArgsTls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMethods:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/RemoteViews$MutablePair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sMethodsLock:[Ljava/lang/Object;


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Landroid/content/pm/ApplicationInfo;

.field private mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field private mIsRoot:Z

.field private mIsWidgetCollectionChild:Z

.field private mLandscape:Landroid/widget/RemoteViews;

.field private final mLayoutId:I

.field private mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

.field private final mPair:Landroid/widget/RemoteViews$MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/RemoteViews$MutablePair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mPortrait:Landroid/widget/RemoteViews;


# direct methods
.method static synthetic -get0(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/RemoteViews;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    #@0
    .prologue
    invoke-static {p0}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-static {p0}, Landroid/widget/RemoteViews;->wrapArg(Ljava/lang/Object;)[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "paramType"    # Ljava/lang/Class;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "rv"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 0
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 140
    new-instance v0, Landroid/widget/RemoteViews$OnClickHandler;

    #@2
    invoke-direct {v0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    #@5
    sput-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    #@7
    .line 142
    const/4 v0, 0x0

    #@8
    new-array v0, v0, [Ljava/lang/Object;

    #@a
    sput-object v0, Landroid/widget/RemoteViews;->sMethodsLock:[Ljava/lang/Object;

    #@c
    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    #@e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@11
    .line 143
    sput-object v0, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    #@13
    .line 145
    new-instance v0, Landroid/widget/RemoteViews$1;

    #@15
    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    #@18
    sput-object v0, Landroid/widget/RemoteViews;->sInvokeArgsTls:Ljava/lang/ThreadLocal;

    #@1a
    .line 2911
    new-instance v0, Landroid/widget/RemoteViews$2;

    #@1c
    invoke-direct {v0}, Landroid/widget/RemoteViews$2;-><init>()V

    #@1f
    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    .line 72
    return-void
.end method

.method protected constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 2
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "layoutId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 114
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    #@7
    .line 128
    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    #@9
    .line 129
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    #@b
    .line 138
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    #@e
    .line 183
    new-instance v0, Landroid/widget/RemoteViews$MutablePair;

    #@10
    invoke-direct {v0, v1, v1}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@13
    .line 182
    iput-object v0, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    #@15
    .line 1763
    iput-object p1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@17
    .line 1764
    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    #@19
    .line 1765
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    #@1b
    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@20
    .line 1767
    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@22
    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    #@25
    iput-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@27
    .line 1768
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    #@2a
    .line 1762
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1812
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    #@4
    .line 1811
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 1815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 114
    iput-boolean v5, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    #@8
    .line 128
    iput-object v7, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    #@a
    .line 129
    iput-object v7, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    #@c
    .line 138
    iput-boolean v6, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    #@e
    .line 183
    new-instance v4, Landroid/widget/RemoteViews$MutablePair;

    #@10
    invoke-direct {v4, v7, v7}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@13
    .line 182
    iput-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    #@15
    .line 1816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v2

    #@19
    .line 1819
    .local v2, "mode":I
    if-nez p2, :cond_0

    #@1b
    .line 1820
    new-instance v4, Landroid/widget/RemoteViews$BitmapCache;

    #@1d
    invoke-direct {v4, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    #@20
    iput-object v4, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@22
    .line 1826
    :goto_0
    if-nez v2, :cond_2

    #@24
    .line 1827
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Landroid/content/pm/ApplicationInfo;

    #@2a
    iput-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@2c
    .line 1828
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v4

    #@30
    iput v4, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    #@32
    .line 1829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v4

    #@36
    if-ne v4, v5, :cond_1

    #@38
    move v4, v5

    #@39
    :goto_1
    iput-boolean v4, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    #@3b
    .line 1831
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v0

    #@3f
    .line 1832
    .local v0, "count":I
    if-lez v0, :cond_3

    #@41
    .line 1833
    new-instance v4, Ljava/util/ArrayList;

    #@43
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@46
    iput-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@48
    .line 1834
    const/4 v1, 0x0

    #@49
    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    #@4b
    .line 1835
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4e
    move-result v3

    #@4f
    .line 1836
    .local v3, "tag":I
    packed-switch v3, :pswitch_data_0

    #@52
    .line 1883
    :pswitch_0
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    #@54
    new-instance v5, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v6, "Tag "

    #@5c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    const-string/jumbo v6, " not found"

    #@67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v5

    #@6f
    invoke-direct {v4, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    #@72
    throw v4

    #@73
    .line 1822
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "tag":I
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    #@76
    .line 1823
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->setNotRoot()V

    #@79
    goto :goto_0

    #@7a
    :cond_1
    move v4, v6

    #@7b
    .line 1829
    goto :goto_1

    #@7c
    .line 1838
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "tag":I
    :pswitch_1
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@7e
    new-instance v5, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    #@80
    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    #@83
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@86
    .line 1834
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@88
    goto :goto_2

    #@89
    .line 1841
    :pswitch_2
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@8b
    new-instance v5, Landroid/widget/RemoteViews$SetDrawableParameters;

    #@8d
    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    #@90
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@93
    goto :goto_3

    #@94
    .line 1844
    :pswitch_3
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@96
    new-instance v5, Landroid/widget/RemoteViews$ReflectionAction;

    #@98
    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    #@9b
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9e
    goto :goto_3

    #@9f
    .line 1847
    :pswitch_4
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@a1
    new-instance v5, Landroid/widget/RemoteViews$ViewGroupAction;

    #@a3
    iget-object v6, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@a5
    invoke-direct {v5, p0, p1, v6}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    #@a8
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ab
    goto :goto_3

    #@ac
    .line 1850
    :pswitch_5
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@ae
    new-instance v5, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    #@b0
    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    #@b3
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b6
    goto :goto_3

    #@b7
    .line 1853
    :pswitch_6
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@b9
    new-instance v5, Landroid/widget/RemoteViews$SetEmptyView;

    #@bb
    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    #@be
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c1
    goto :goto_3

    #@c2
    .line 1856
    :pswitch_7
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@c4
    new-instance v5, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    #@c6
    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    #@c9
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cc
    goto :goto_3

    #@cd
    .line 1859
    :pswitch_8
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@cf
    new-instance v5, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    #@d1
    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    #@d4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d7
    goto :goto_3

    #@d8
    .line 1862
    :pswitch_9
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@da
    new-instance v5, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    #@dc
    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    #@df
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e2
    goto :goto_3

    #@e3
    .line 1865
    :pswitch_a
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@e5
    new-instance v5, Landroid/widget/RemoteViews$TextViewDrawableAction;

    #@e7
    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    #@ea
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ed
    goto :goto_3

    #@ee
    .line 1868
    :pswitch_b
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@f0
    new-instance v5, Landroid/widget/RemoteViews$TextViewSizeAction;

    #@f2
    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    #@f5
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f8
    goto :goto_3

    #@f9
    .line 1871
    :pswitch_c
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@fb
    new-instance v5, Landroid/widget/RemoteViews$ViewPaddingAction;

    #@fd
    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    #@100
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@103
    goto :goto_3

    #@104
    .line 1874
    :pswitch_d
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@106
    new-instance v5, Landroid/widget/RemoteViews$BitmapReflectionAction;

    #@108
    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    #@10b
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10e
    goto/16 :goto_3

    #@110
    .line 1877
    :pswitch_e
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@112
    new-instance v5, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    #@114
    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    #@117
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11a
    goto/16 :goto_3

    #@11c
    .line 1880
    :pswitch_f
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@11e
    new-instance v5, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;

    #@120
    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    #@123
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@126
    goto/16 :goto_3

    #@128
    .line 1889
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "tag":I
    :cond_2
    new-instance v4, Landroid/widget/RemoteViews;

    #@12a
    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@12c
    invoke-direct {v4, p1, v5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    #@12f
    iput-object v4, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    #@131
    .line 1890
    new-instance v4, Landroid/widget/RemoteViews;

    #@133
    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@135
    invoke-direct {v4, p1, v5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    #@138
    iput-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    #@13a
    .line 1891
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    #@13c
    iget-object v4, v4, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@13e
    iput-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@140
    .line 1892
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    #@142
    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@145
    move-result v4

    #@146
    iput v4, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    #@148
    .line 1896
    :cond_3
    new-instance v4, Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@14a
    invoke-direct {v4, p0, v7}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    #@14d
    iput-object v4, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@14f
    .line 1897
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    #@152
    .line 1815
    return-void

    #@153
    .line 1836
    nop

    #@154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "landscape"    # Landroid/widget/RemoteViews;
    .param p2, "portrait"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 114
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    #@7
    .line 128
    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    #@9
    .line 129
    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    #@b
    .line 138
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    #@e
    .line 183
    new-instance v0, Landroid/widget/RemoteViews$MutablePair;

    #@10
    invoke-direct {v0, v2, v2}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@13
    .line 182
    iput-object v0, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    #@15
    .line 1783
    if-eqz p1, :cond_0

    #@17
    if-nez p2, :cond_1

    #@19
    .line 1784
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@1b
    const-string/jumbo v1, "Both RemoteViews must be non-null"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 1786
    :cond_1
    iget-object v0, p1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@24
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@26
    iget-object v1, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@28
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@2a
    if-ne v0, v1, :cond_2

    #@2c
    .line 1787
    iget-object v0, p1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@2e
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@30
    iget-object v1, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@32
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 1790
    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@3c
    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@3e
    .line 1791
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@41
    move-result v0

    #@42
    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    #@44
    .line 1793
    iput-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    #@46
    .line 1794
    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    #@48
    .line 1797
    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@4a
    invoke-direct {v0, p0, v2}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    #@4d
    iput-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@4f
    .line 1799
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    #@51
    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    #@54
    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@56
    .line 1800
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    #@59
    .line 1801
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    #@5c
    .line 1803
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    #@5f
    .line 1782
    return-void

    #@60
    .line 1788
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    #@62
    const-string/jumbo v1, "Both RemoteViews must share the same package and user"

    #@65
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@68
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "layoutId"    # I

    #@0
    .prologue
    .line 1736
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p1, v0}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    #@b
    .line 1735
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "layoutId"    # I

    #@0
    .prologue
    .line 1750
    invoke-static {p1, p2}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p3}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    #@7
    .line 1749
    return-void
.end method

.method private addAction(Landroid/widget/RemoteViews$Action;)V
    .locals 2
    .param p1, "a"    # Landroid/widget/RemoteViews$Action;

    #@0
    .prologue
    .line 1992
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1993
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v1, "RemoteViews specifying separate landscape and portrait layouts cannot be modified. Instead, fully configure the landscape and portrait layouts individually before constructing the combined layout."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1997
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@11
    if-nez v0, :cond_1

    #@13
    .line 1998
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@1a
    .line 2000
    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f
    .line 2003
    iget-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@21
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    #@24
    .line 1991
    return-void
.end method

.method private configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "rv"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 1321
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@2
    iget-object v1, p1, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$BitmapCache;->assimilate(Landroid/widget/RemoteViews$BitmapCache;)V

    #@7
    .line 1322
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@9
    invoke-direct {p1, v0}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    #@c
    .line 1323
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->setNotRoot()V

    #@f
    .line 1320
    return-void
.end method

.method private static getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2883
    if-nez p0, :cond_0

    #@3
    .line 2884
    return-object v4

    #@4
    .line 2888
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@7
    move-result-object v0

    #@8
    .line 2889
    .local v0, "application":Landroid/app/Application;
    if-nez v0, :cond_1

    #@a
    .line 2890
    new-instance v4, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v5, "Cannot create remote views out of an aplication."

    #@f
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v4

    #@13
    .line 2893
    :cond_1
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@16
    move-result-object v1

    #@17
    .line 2894
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@19
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    #@1c
    move-result v4

    #@1d
    if-ne v4, p1, :cond_2

    #@1f
    .line 2895
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@21
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 2905
    :goto_0
    return-object v1

    #@28
    .line 2897
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    #@2b
    move-result-object v4

    #@2c
    .line 2898
    new-instance v5, Landroid/os/UserHandle;

    #@2e
    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@31
    const/4 v6, 0x0

    #@32
    .line 2897
    invoke-virtual {v4, p0, v6, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    #@35
    move-result-object v2

    #@36
    .line 2899
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    move-result-object v1

    #@3a
    goto :goto_0

    #@3b
    .line 2900
    .end local v2    # "context":Landroid/content/Context;
    :catch_0
    move-exception v3

    #@3c
    .line 2901
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@3e
    new-instance v5, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v6, "No such package "

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@55
    throw v4
.end method

.method private getContextForResources(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 2810
    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 2811
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    #@7
    move-result v1

    #@8
    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@a
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@c
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@f
    move-result v2

    #@10
    if-ne v1, v2, :cond_0

    #@12
    .line 2812
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@18
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    .line 2811
    if-eqz v1, :cond_0

    #@20
    .line 2813
    return-object p1

    #@21
    .line 2816
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@23
    .line 2817
    const/4 v2, 0x4

    #@24
    .line 2816
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    move-result-object v1

    #@28
    return-object v1

    #@29
    .line 2818
    :catch_0
    move-exception v0

    #@2a
    .line 2819
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "RemoteViews"

    #@2d
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v3, "Package name "

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@3b
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    const-string/jumbo v3, " not found"

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 2823
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return-object p1
.end method

.method private getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    .prologue
    .line 752
    .local p3, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    .line 754
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v5, Landroid/widget/RemoteViews;->sMethodsLock:[Ljava/lang/Object;

    #@6
    monitor-enter v5

    #@7
    .line 755
    :try_start_0
    sget-object v4, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Landroid/util/ArrayMap;

    #@f
    .line 756
    .local v3, "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    if-nez v3, :cond_0

    #@11
    .line 757
    new-instance v3, Landroid/util/ArrayMap;

    #@13
    .end local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    #@16
    .line 758
    .restart local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    sget-object v4, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    #@18
    invoke-virtual {v4, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 761
    :cond_0
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    #@1d
    iput-object p2, v4, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    #@1f
    .line 762
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    #@21
    iput-object p3, v4, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    #@23
    .line 764
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    #@25
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 765
    .local v2, "method":Ljava/lang/reflect/Method;
    if-nez v2, :cond_3

    #@2d
    .line 767
    if-nez p3, :cond_1

    #@2f
    .line 768
    const/4 v4, 0x0

    #@30
    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    #@32
    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    move-result-object v2

    #@36
    .line 777
    :goto_0
    :try_start_2
    const-class v4, Landroid/view/RemotableViewMethod;

    #@38
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@3b
    move-result v4

    #@3c
    if-nez v4, :cond_2

    #@3e
    .line 778
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    #@40
    new-instance v6, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v7, "view: "

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    .line 779
    const-string/jumbo v7, " can\'t use method with RemoteViews: "

    #@57
    .line 778
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    .line 780
    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    #@62
    move-result-object v7

    #@63
    .line 778
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v6

    #@6b
    invoke-direct {v4, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6f
    .line 754
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    :catchall_0
    move-exception v4

    #@70
    monitor-exit v5

    #@71
    throw v4

    #@72
    .line 770
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    :cond_1
    const/4 v4, 0x1

    #@73
    :try_start_3
    new-array v4, v4, [Ljava/lang/Class;

    #@75
    const/4 v6, 0x0

    #@76
    aput-object p3, v4, v6

    #@78
    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7b
    move-result-object v2

    #@7c
    goto :goto_0

    #@7d
    .line 772
    :catch_0
    move-exception v0

    #@7e
    .line 773
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_4
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    #@80
    new-instance v6, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v7, "view: "

    #@88
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v6

    #@8c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8f
    move-result-object v7

    #@90
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    const-string/jumbo v7, " doesn\'t have method: "

    #@97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v6

    #@9b
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v6

    #@9f
    .line 774
    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    #@a2
    move-result-object v7

    #@a3
    .line 773
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v6

    #@a7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v6

    #@ab
    invoke-direct {v4, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    #@ae
    throw v4

    #@af
    .line 783
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_2
    new-instance v4, Landroid/widget/RemoteViews$MutablePair;

    #@b1
    invoke-direct {v4, p2, p3}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@b4
    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b7
    :cond_3
    monitor-exit v5

    #@b8
    .line 787
    return-object v2
.end method

.method private static getParameters(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 791
    .local p0, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    #@2
    const-string/jumbo v0, "()"

    #@5
    return-object v0

    #@6
    .line 792
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, "("

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, ")"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method private getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 2704
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 2705
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@d
    move-result-object v1

    #@e
    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    #@10
    .line 2706
    .local v0, "orientation":I
    const/4 v1, 0x2

    #@11
    if-ne v0, v1, :cond_0

    #@13
    .line 2707
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    #@15
    return-object v1

    #@16
    .line 2709
    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    #@18
    return-object v1

    #@19
    .line 2712
    .end local v0    # "orientation":I
    :cond_1
    return-object p0
.end method

.method private static getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/high16 v5, 0x3f000000    # 0.5f

    #@4
    .line 737
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@f
    move-result-object v3

    #@10
    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@12
    .line 739
    .local v0, "appScale":F
    const/4 v3, 0x2

    #@13
    new-array v1, v3, [I

    #@15
    .line 740
    .local v1, "pos":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@18
    .line 742
    new-instance v2, Landroid/graphics/Rect;

    #@1a
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@1d
    .line 743
    .local v2, "rect":Landroid/graphics/Rect;
    aget v3, v1, v4

    #@1f
    int-to-float v3, v3

    #@20
    mul-float/2addr v3, v0

    #@21
    add-float/2addr v3, v5

    #@22
    float-to-int v3, v3

    #@23
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@25
    .line 744
    aget v3, v1, v6

    #@27
    int-to-float v3, v3

    #@28
    mul-float/2addr v3, v0

    #@29
    add-float/2addr v3, v5

    #@2a
    float-to-int v3, v3

    #@2b
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@2d
    .line 745
    aget v3, v1, v4

    #@2f
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@32
    move-result v4

    #@33
    add-int/2addr v3, v4

    #@34
    int-to-float v3, v3

    #@35
    mul-float/2addr v3, v0

    #@36
    add-float/2addr v3, v5

    #@37
    float-to-int v3, v3

    #@38
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@3a
    .line 746
    aget v3, v1, v6

    #@3c
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@3f
    move-result v4

    #@40
    add-int/2addr v3, v4

    #@41
    int-to-float v3, v3

    #@42
    mul-float/2addr v3, v0

    #@43
    add-float/2addr v3, v5

    #@44
    float-to-int v3, v3

    #@45
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@47
    .line 747
    return-object v2
.end method

.method private hasLandscapeAndPortraitLayouts()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1772
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 2799
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 2800
    if-nez p3, :cond_0

    #@6
    sget-object p3, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    #@8
    .line 2801
    :cond_0
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v1

    #@e
    .line 2802
    .local v1, "count":I
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@11
    .line 2803
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/widget/RemoteViews$Action;

    #@19
    .line 2804
    .local v0, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@1c
    .line 2802
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2798
    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private recalculateMemoryUsage()V
    .locals 4

    #@0
    .prologue
    .line 1940
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@2
    invoke-virtual {v2}, Landroid/widget/RemoteViews$MemoryUsageCounter;->clear()V

    #@5
    .line 1942
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_2

    #@b
    .line 1944
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1945
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    .line 1946
    .local v0, "count":I
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@18
    .line 1947
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/widget/RemoteViews$Action;

    #@20
    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@22
    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    #@25
    .line 1946
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1950
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    iget-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    #@2a
    if-eqz v2, :cond_1

    #@2c
    .line 1951
    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@2e
    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@30
    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    #@33
    .line 1939
    :cond_1
    :goto_1
    return-void

    #@34
    .line 1954
    :cond_2
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@36
    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    #@38
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    #@3b
    move-result v3

    #@3c
    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    #@3f
    .line 1955
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@41
    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    #@43
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    #@46
    move-result v3

    #@47
    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    #@4a
    .line 1956
    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@4c
    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@4e
    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    #@51
    goto :goto_1
.end method

.method private setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 3
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    #@0
    .prologue
    .line 1964
    iput-object p1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@2
    .line 1965
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1966
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 1967
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v0

    #@12
    .line 1968
    .local v0, "count":I
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 1969
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Landroid/widget/RemoteViews$Action;

    #@1d
    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$Action;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    #@20
    .line 1968
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1973
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    #@25
    invoke-direct {v2, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    #@28
    .line 1974
    iget-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    #@2a
    invoke-direct {v2, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    #@2d
    .line 1963
    :cond_1
    return-void
.end method

.method private static wrapArg(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 796
    sget-object v1, Landroid/widget/RemoteViews;->sInvokeArgsTls:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/Object;

    #@8
    .line 797
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    #@9
    aput-object p0, v0, v1

    #@b
    .line 798
    return-object v0
.end method


# virtual methods
.method public addView(ILandroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nestedView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 2017
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    #@5
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@8
    .line 2016
    return-void
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 2727
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 2732
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    #@3
    move-result-object v4

    #@4
    .line 2739
    .local v4, "rvToApply":Landroid/widget/RemoteViews;
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getContextForResources(Landroid/content/Context;)Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    .line 2740
    .local v0, "contextForResources":Landroid/content/Context;
    new-instance v2, Landroid/widget/RemoteViews$3;

    #@a
    invoke-direct {v2, p0, p1, v0}, Landroid/widget/RemoteViews$3;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Context;)V

    #@d
    .line 2756
    .local v2, "inflationContext":Landroid/content/Context;
    const-string/jumbo v5, "layout_inflater"

    #@10
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 2755
    check-cast v1, Landroid/view/LayoutInflater;

    #@16
    .line 2760
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@19
    move-result-object v1

    #@1a
    .line 2761
    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    #@1d
    .line 2762
    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@20
    move-result v5

    #@21
    const/4 v6, 0x0

    #@22
    invoke-virtual {v1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@25
    move-result-object v3

    #@26
    .line 2764
    .local v3, "result":Landroid/view/View;
    invoke-direct {v4, v3, p2, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@29
    .line 2766
    return-object v3
.end method

.method public clone()Landroid/widget/RemoteViews;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1903
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@8
    .line 1904
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    #@b
    .line 1905
    new-instance v1, Landroid/widget/RemoteViews;

    #@d
    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    #@10
    .line 1906
    .local v1, "rv":Landroid/widget/RemoteViews;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@13
    .line 1907
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1901
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 2845
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public estimateMemoryUsage()I
    .locals 1

    #@0
    .prologue
    .line 1983
    iget-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@2
    invoke-virtual {v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->getMemoryUsage()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLayoutId()I
    .locals 1

    #@0
    .prologue
    .line 1922
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    #@2
    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1911
    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@7
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@9
    :cond_0
    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    #@0
    .prologue
    .line 2832
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public mergeRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 10
    .param p1, "newRv"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 285
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 289
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@6
    move-result-object v1

    #@7
    .line 291
    .local v1, "copy":Landroid/widget/RemoteViews;
    new-instance v5, Ljava/util/HashMap;

    #@9
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@c
    .line 292
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/widget/RemoteViews$Action;>;"
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@e
    if-nez v8, :cond_1

    #@10
    .line 293
    new-instance v8, Ljava/util/ArrayList;

    #@12
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@15
    iput-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@17
    .line 296
    :cond_1
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v2

    #@1d
    .line 297
    .local v2, "count":I
    const/4 v3, 0x0

    #@1e
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    #@20
    .line 298
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/widget/RemoteViews$Action;

    #@28
    .line 299
    .local v0, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    #@2b
    move-result-object v8

    #@2c
    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 297
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_0

    #@32
    .line 302
    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    :cond_2
    iget-object v7, v1, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@34
    .line 303
    .local v7, "newActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews$Action;>;"
    if-nez v7, :cond_3

    #@36
    return-void

    #@37
    .line 304
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v2

    #@3b
    .line 305
    const/4 v3, 0x0

    #@3c
    :goto_1
    if-ge v3, v2, :cond_7

    #@3e
    .line 306
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Landroid/widget/RemoteViews$Action;

    #@44
    .line 307
    .restart local v0    # "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v8

    #@48
    check-cast v8, Landroid/widget/RemoteViews$Action;

    #@4a
    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    .line 308
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@51
    move-result-object v8

    #@52
    check-cast v8, Landroid/widget/RemoteViews$Action;

    #@54
    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    #@57
    move-result v6

    #@58
    .line 309
    .local v6, "mergeBehavior":I
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5b
    move-result v8

    #@5c
    if-eqz v8, :cond_4

    #@5e
    if-nez v6, :cond_4

    #@60
    .line 310
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@62
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    move-result-object v9

    #@66
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@69
    .line 311
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    .line 315
    :cond_4
    if-eqz v6, :cond_5

    #@6e
    const/4 v8, 0x1

    #@6f
    if-ne v6, v8, :cond_6

    #@71
    .line 316
    :cond_5
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@73
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@76
    .line 305
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@78
    goto :goto_1

    #@79
    .line 321
    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "mergeBehavior":I
    :cond_7
    new-instance v8, Landroid/widget/RemoteViews$BitmapCache;

    #@7b
    invoke-direct {v8}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    #@7e
    iput-object v8, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@80
    .line 322
    iget-object v8, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@82
    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    #@85
    .line 284
    return-void
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 2841
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 2778
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@4
    .line 2777
    return-void
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 2783
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    #@3
    move-result-object v0

    #@4
    .line 2788
    .local v0, "rvToApply":Landroid/widget/RemoteViews;
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2789
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    #@d
    move-result v1

    #@e
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@11
    move-result v2

    #@12
    if-eq v1, v2, :cond_0

    #@14
    .line 2790
    new-instance v1, Ljava/lang/RuntimeException;

    #@16
    const-string/jumbo v2, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    #@19
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 2795
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/view/ViewGroup;

    #@23
    invoke-direct {v0, p2, v1, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@26
    .line 2782
    return-void
.end method

.method public removeAllViews(I)V
    .locals 2
    .param p1, "viewId"    # I

    #@0
    .prologue
    .line 2027
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    #@6
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@9
    .line 2026
    return-void
.end method

.method public setAccessibilityTraversalAfter(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nextId"    # I

    #@0
    .prologue
    .line 2690
    const-string/jumbo v0, "setAccessibilityTraversalAfter"

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@6
    .line 2689
    return-void
.end method

.method public setAccessibilityTraversalBefore(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nextId"    # I

    #@0
    .prologue
    .line 2680
    const-string/jumbo v0, "setAccessibilityTraversalBefore"

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@6
    .line 2679
    return-void
.end method

.method public setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 2627
    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    #@5
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@8
    .line 2626
    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    #@0
    .prologue
    .line 2496
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v5

    #@6
    const/4 v4, 0x1

    #@7
    move-object v1, p0

    #@8
    move v2, p1

    #@9
    move-object v3, p2

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@d
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@10
    .line 2495
    return-void
.end method

.method public setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2638
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    const/16 v4, 0xd

    #@4
    move-object v1, p0

    #@5
    move v2, p1

    #@6
    move-object v3, p2

    #@7
    move-object v5, p3

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@b
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@e
    .line 2637
    return-void
.end method

.method public setByte(ILjava/lang/String;B)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # B

    #@0
    .prologue
    .line 2507
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@5
    move-result-object v5

    #@6
    const/4 v4, 0x2

    #@7
    move-object v1, p0

    #@8
    move v2, p1

    #@9
    move-object v3, p2

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@d
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@10
    .line 2506
    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # C

    #@0
    .prologue
    .line 2573
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@5
    move-result-object v5

    #@6
    const/16 v4, 0x8

    #@8
    move-object v1, p0

    #@9
    move v2, p1

    #@a
    move-object v3, p2

    #@b
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@e
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@11
    .line 2572
    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2595
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    const/16 v4, 0xa

    #@4
    move-object v1, p0

    #@5
    move v2, p1

    #@6
    move-object v3, p2

    #@7
    move-object v5, p3

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@b
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@e
    .line 2594
    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "base"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "started"    # Z

    #@0
    .prologue
    .line 2240
    const-string/jumbo v0, "setBase"

    #@3
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    #@6
    .line 2241
    const-string/jumbo v0, "setFormat"

    #@9
    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    #@c
    .line 2242
    const-string/jumbo v0, "setStarted"

    #@f
    invoke-virtual {p0, p1, v0, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    #@12
    .line 2239
    return-void
.end method

.method public setContentDescription(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2670
    const-string/jumbo v0, "setContentDescription"

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    #@6
    .line 2669
    return-void
.end method

.method public setDisplayedChild(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "childIndex"    # I

    #@0
    .prologue
    .line 2055
    const-string/jumbo v0, "setDisplayedChild"

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@6
    .line 2054
    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # D

    #@0
    .prologue
    .line 2562
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@5
    move-result-object v5

    #@6
    const/4 v4, 0x7

    #@7
    move-object v1, p0

    #@8
    move v2, p1

    #@9
    move-object v3, p2

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@d
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@10
    .line 2561
    return-void
.end method

.method public setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "targetBackground"    # Z
    .param p3, "alpha"    # I
    .param p4, "colorFilter"    # I
    .param p5, "mode"    # Landroid/graphics/PorterDuff$Mode;
    .param p6, "level"    # I

    #@0
    .prologue
    .line 2351
    new-instance v0, Landroid/widget/RemoteViews$SetDrawableParameters;

    #@2
    move-object v1, p0

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    move-object v6, p5

    #@8
    move v7, p6

    #@9
    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V

    #@c
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@f
    .line 2350
    return-void
.end method

.method public setEmptyView(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "emptyViewId"    # I

    #@0
    .prologue
    .line 2222
    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;II)V

    #@5
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@8
    .line 2221
    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # F

    #@0
    .prologue
    .line 2551
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5
    move-result-object v5

    #@6
    const/4 v4, 0x6

    #@7
    move-object v1, p0

    #@8
    move v2, p1

    #@9
    move-object v3, p2

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@d
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@10
    .line 2550
    return-void
.end method

.method public setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 2660
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    const/16 v4, 0x10

    #@4
    move-object v1, p0

    #@5
    move v2, p1

    #@6
    move-object v3, p2

    #@7
    move-object v5, p3

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@b
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@e
    .line 2659
    return-void
.end method

.method public setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 2202
    const-string/jumbo v0, "setImageBitmap"

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    #@6
    .line 2201
    return-void
.end method

.method public setImageViewIcon(ILandroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 2212
    const-string/jumbo v0, "setImageIcon"

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    #@6
    .line 2211
    return-void
.end method

.method public setImageViewResource(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "srcId"    # I

    #@0
    .prologue
    .line 2182
    const-string/jumbo v0, "setImageResource"

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@6
    .line 2181
    return-void
.end method

.method public setImageViewUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 2192
    const-string/jumbo v0, "setImageURI"

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    #@6
    .line 2191
    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # I

    #@0
    .prologue
    .line 2529
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v5

    #@6
    const/4 v4, 0x4

    #@7
    move-object v1, p0

    #@8
    move v2, p1

    #@9
    move-object v3, p2

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@d
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@10
    .line 2528
    return-void
.end method

.method public setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2649
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    const/16 v4, 0xe

    #@4
    move-object v1, p0

    #@5
    move v2, p1

    #@6
    move-object v3, p2

    #@7
    move-object v5, p3

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@b
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@e
    .line 2648
    return-void
.end method

.method setIsWidgetCollectionChild(Z)V
    .locals 0
    .param p1, "isWidgetCollectionChild"    # Z

    #@0
    .prologue
    .line 1933
    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    #@2
    .line 1932
    return-void
.end method

.method public setLabelFor(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "labeledId"    # I

    #@0
    .prologue
    .line 2700
    const-string/jumbo v0, "setLabelFor"

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@6
    .line 2699
    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # J

    #@0
    .prologue
    .line 2540
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object v5

    #@6
    const/4 v4, 0x5

    #@7
    move-object v1, p0

    #@8
    move v2, p1

    #@9
    move-object v3, p2

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@d
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@10
    .line 2539
    return-void
.end method

.method setNotRoot()V
    .locals 1

    #@0
    .prologue
    .line 1327
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    #@3
    .line 1326
    return-void
.end method

.method public setOnClickFillInIntent(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2320
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    #@5
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@8
    .line 2319
    return-void
.end method

.method public setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2281
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    #@5
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@8
    .line 2280
    return-void
.end method

.method public setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "pendingIntentTemplate"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2297
    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    #@5
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@8
    .line 2296
    return-void
.end method

.method public setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 2375
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    const-string/jumbo v3, "setProgressBackgroundTintList"

    #@5
    .line 2376
    const/16 v4, 0xf

    #@7
    move-object v1, p0

    #@8
    move v2, p1

    #@9
    move-object v5, p2

    #@a
    .line 2375
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@d
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@10
    .line 2374
    return-void
.end method

.method public setProgressBar(IIIZ)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "max"    # I
    .param p3, "progress"    # I
    .param p4, "indeterminate"    # Z

    #@0
    .prologue
    .line 2260
    const-string/jumbo v0, "setIndeterminate"

    #@3
    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    #@6
    .line 2261
    if-nez p4, :cond_0

    #@8
    .line 2262
    const-string/jumbo v0, "setMax"

    #@b
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@e
    .line 2263
    const-string/jumbo v0, "setProgress"

    #@11
    invoke-virtual {p0, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@14
    .line 2259
    :cond_0
    return-void
.end method

.method public setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 2387
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    const-string/jumbo v3, "setIndeterminateTintList"

    #@5
    .line 2388
    const/16 v4, 0xf

    #@7
    move-object v1, p0

    #@8
    move v2, p1

    #@9
    move-object v5, p2

    #@a
    .line 2387
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@d
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@10
    .line 2386
    return-void
.end method

.method public setProgressTintList(ILandroid/content/res/ColorStateList;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 2363
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    const-string/jumbo v3, "setProgressTintList"

    #@5
    .line 2364
    const/16 v4, 0xf

    #@7
    move-object v1, p0

    #@8
    move v2, p1

    #@9
    move-object v5, p2

    #@a
    .line 2363
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@d
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@10
    .line 2362
    return-void
.end method

.method public setRelativeScrollPosition(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 2472
    const-string/jumbo v0, "smoothScrollByOffset"

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@6
    .line 2471
    return-void
.end method

.method public setRemoteAdapter(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2415
    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    #@3
    .line 2414
    return-void
.end method

.method public setRemoteAdapter(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2427
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    #@5
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@8
    .line 2426
    return-void
.end method

.method public setRemoteAdapter(ILjava/util/ArrayList;I)V
    .locals 1
    .param p1, "viewId"    # I
    .param p3, "viewTypeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2452
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V

    #@5
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@8
    .line 2451
    return-void
.end method

.method public setScrollPosition(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "position"    # I

    #@0
    .prologue
    .line 2462
    const-string/jumbo v0, "smoothScrollToPosition"

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@6
    .line 2461
    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # S

    #@0
    .prologue
    .line 2518
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@5
    move-result-object v5

    #@6
    const/4 v4, 0x3

    #@7
    move-object v1, p0

    #@8
    move v2, p1

    #@9
    move-object v3, p2

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@d
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@10
    .line 2517
    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2584
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    const/16 v4, 0x9

    #@4
    move-object v1, p0

    #@5
    move v2, p1

    #@6
    move-object v3, p2

    #@7
    move-object v5, p3

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@b
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@e
    .line 2583
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    #@0
    .prologue
    .line 2399
    const-string/jumbo v0, "setTextColor"

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@6
    .line 2398
    return-void
.end method

.method public setTextViewCompoundDrawables(IIIII)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 2100
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    #@2
    const/4 v3, 0x0

    #@3
    move-object v1, p0

    #@4
    move v2, p1

    #@5
    move v4, p2

    #@6
    move v5, p3

    #@7
    move v6, p4

    #@8
    move v7, p5

    #@9
    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    #@c
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@f
    .line 2099
    return-void
.end method

.method public setTextViewCompoundDrawables(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "left"    # Landroid/graphics/drawable/Icon;
    .param p3, "top"    # Landroid/graphics/drawable/Icon;
    .param p4, "right"    # Landroid/graphics/drawable/Icon;
    .param p5, "bottom"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 2154
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    #@2
    const/4 v3, 0x0

    #@3
    move-object v1, p0

    #@4
    move v2, p1

    #@5
    move-object v4, p2

    #@6
    move-object v5, p3

    #@7
    move-object v6, p4

    #@8
    move-object v7, p5

    #@9
    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    #@c
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@f
    .line 2153
    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(IIIII)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "start"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 2115
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    #@2
    const/4 v3, 0x1

    #@3
    move-object v1, p0

    #@4
    move v2, p1

    #@5
    move v4, p2

    #@6
    move v5, p3

    #@7
    move v6, p4

    #@8
    move v7, p5

    #@9
    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    #@c
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@f
    .line 2114
    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "start"    # Landroid/graphics/drawable/Icon;
    .param p3, "top"    # Landroid/graphics/drawable/Icon;
    .param p4, "end"    # Landroid/graphics/drawable/Icon;
    .param p5, "bottom"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 2172
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    #@2
    const/4 v3, 0x1

    #@3
    move-object v1, p0

    #@4
    move v2, p1

    #@5
    move-object v4, p2

    #@6
    move-object v5, p3

    #@7
    move-object v6, p4

    #@8
    move-object v7, p5

    #@9
    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    #@c
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@f
    .line 2171
    return-void
.end method

.method public setTextViewCompoundDrawablesRelativeColorFilter(IIILandroid/graphics/PorterDuff$Mode;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "index"    # I
    .param p3, "color"    # I
    .param p4, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 2134
    if-ltz p2, :cond_0

    #@2
    const/4 v0, 0x4

    #@3
    if-lt p2, v0, :cond_1

    #@5
    .line 2135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "index must be in range [0, 3]."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 2137
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;

    #@10
    const/4 v3, 0x1

    #@11
    move-object v1, p0

    #@12
    move v2, p1

    #@13
    move v4, p2

    #@14
    move v5, p3

    #@15
    move-object v6, p4

    #@16
    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;-><init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;)V

    #@19
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@1c
    .line 2133
    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2075
    const-string/jumbo v0, "setText"

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    #@6
    .line 2074
    return-void
.end method

.method public setTextViewTextSize(IIF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "units"    # I
    .param p3, "size"    # F

    #@0
    .prologue
    .line 2086
    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;IIF)V

    #@5
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@8
    .line 2085
    return-void
.end method

.method public setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 2606
    if-eqz p3, :cond_0

    #@2
    .line 2608
    invoke-virtual {p3}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    #@5
    move-result-object p3

    #@6
    .line 2609
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2610
    const-string/jumbo v0, "RemoteViews.setUri()"

    #@f
    invoke-virtual {p3, v0}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    #@12
    .line 2613
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@14
    const/16 v4, 0xb

    #@16
    move-object v1, p0

    #@17
    move v2, p1

    #@18
    move-object v3, p2

    #@19
    move-object v5, p3

    #@1a
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@1d
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@20
    .line 2605
    return-void
.end method

.method public setViewPadding(IIIII)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 2485
    new-instance v0, Landroid/widget/RemoteViews$ViewPaddingAction;

    #@2
    move-object v1, p0

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    move v6, p5

    #@8
    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;IIIII)V

    #@b
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@e
    .line 2484
    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    #@0
    .prologue
    .line 2065
    const-string/jumbo v0, "setVisibility"

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@6
    .line 2064
    return-void
.end method

.method public showNext(I)V
    .locals 2
    .param p1, "viewId"    # I

    #@0
    .prologue
    .line 2036
    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    #@2
    const-string/jumbo v1, "showNext"

    #@5
    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    #@8
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@b
    .line 2035
    return-void
.end method

.method public showPrevious(I)V
    .locals 2
    .param p1, "viewId"    # I

    #@0
    .prologue
    .line 2045
    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    #@2
    const-string/jumbo v1, "showPrevious"

    #@5
    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    #@8
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    #@b
    .line 2044
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2849
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    #@5
    move-result v5

    #@6
    if-nez v5, :cond_3

    #@8
    .line 2850
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 2853
    iget-boolean v5, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 2854
    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@11
    invoke-virtual {v5, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 2856
    :cond_0
    iget-object v5, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    #@16
    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@19
    .line 2857
    iget v5, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    #@1b
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 2858
    iget-boolean v5, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    #@20
    if-eqz v5, :cond_1

    #@22
    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 2860
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 2861
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v1

    #@2f
    .line 2865
    .local v1, "count":I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 2866
    const/4 v2, 0x0

    #@33
    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    #@35
    .line 2867
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/widget/RemoteViews$Action;

    #@3d
    .line 2868
    .local v0, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1, v4}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    #@40
    .line 2866
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_2

    #@43
    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    move v3, v4

    #@44
    .line 2858
    goto :goto_0

    #@45
    .line 2863
    :cond_2
    const/4 v1, 0x0

    #@46
    .restart local v1    # "count":I
    goto :goto_1

    #@47
    .line 2871
    .end local v1    # "count":I
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 2874
    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    #@4c
    if-eqz v3, :cond_4

    #@4e
    .line 2875
    iget-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    #@50
    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    #@53
    .line 2877
    :cond_4
    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    #@55
    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@58
    .line 2878
    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    #@5a
    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@5d
    .line 2848
    :cond_5
    return-void
.end method
