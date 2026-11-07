.class public Landroid/webkit/TracingConfig;
.super Ljava/lang/Object;
.source "TracingConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/TracingConfig$Builder;,
        Landroid/webkit/TracingConfig$TracingMode;,
        Landroid/webkit/TracingConfig$PredefinedCategories;
    }
.end annotation


# static fields
.field public static final whitelist CATEGORIES_ALL:I = 0x1

.field public static final whitelist CATEGORIES_ANDROID_WEBVIEW:I = 0x2

.field public static final whitelist CATEGORIES_FRAME_VIEWER:I = 0x40

.field public static final whitelist CATEGORIES_INPUT_LATENCY:I = 0x8

.field public static final whitelist CATEGORIES_JAVASCRIPT_AND_RENDERING:I = 0x20

.field public static final whitelist CATEGORIES_NONE:I = 0x0

.field public static final whitelist CATEGORIES_RENDERING:I = 0x10

.field public static final whitelist CATEGORIES_WEB_DEVELOPER:I = 0x4

.field public static final whitelist RECORD_CONTINUOUSLY:I = 0x1

.field public static final whitelist RECORD_UNTIL_FULL:I


# instance fields
.field private final greylist-max-o mCustomIncludedCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPredefinedCategories:I

.field private greylist-max-o mTracingMode:I


# direct methods
.method public constructor greylist-max-o <init>(ILjava/util/List;I)V
    .registers 5
    .param p1, "predefinedCategories"    # I
    .param p3, "tracingMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 119
    .local p2, "customIncludedCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/TracingConfig;->mCustomIncludedCategories:Ljava/util/List;

    .line 120
    iput p1, p0, Landroid/webkit/TracingConfig;->mPredefinedCategories:I

    .line 121
    iget-object v0, p0, Landroid/webkit/TracingConfig;->mCustomIncludedCategories:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    iput p3, p0, Landroid/webkit/TracingConfig;->mTracingMode:I

    .line 123
    return-void
.end method


# virtual methods
.method public whitelist getCustomIncludedCategories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/webkit/TracingConfig;->mCustomIncludedCategories:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPredefinedCategories()I
    .registers 2

    .line 132
    iget v0, p0, Landroid/webkit/TracingConfig;->mPredefinedCategories:I

    return v0
.end method

.method public whitelist getTracingMode()I
    .registers 2

    .line 152
    iget v0, p0, Landroid/webkit/TracingConfig;->mTracingMode:I

    return v0
.end method
