.class final Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api31Impl;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/aidl/AppSearchAttributionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31Impl"
.end annotation


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mPid:I


# direct methods
.method constructor blacklist <init>(Landroid/content/AttributionSource;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api31Impl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 5
    .line 6
    iput p2, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api31Impl;->mPid:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public blacklist getAttributionSource()Landroid/content/AttributionSource;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api31Impl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api31Impl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public blacklist getPid()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api31Impl;->mPid:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getUid()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api31Impl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
