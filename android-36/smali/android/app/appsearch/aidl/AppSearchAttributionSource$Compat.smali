.class interface abstract Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/aidl/AppSearchAttributionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Compat"
.end annotation


# virtual methods
.method public abstract blacklist getAttributionSource()Landroid/content/AttributionSource;
.end method

.method public abstract blacklist getPackageName()Ljava/lang/String;
.end method

.method public abstract blacklist getPid()I
.end method

.method public abstract blacklist getUid()I
.end method
