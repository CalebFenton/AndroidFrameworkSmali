.class public final Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig;
.super Landroid/app/appsearch/AppSearchSchema$PropertyConfig;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/AppSearchSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoublePropertyConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public whitelist isScoringEnabled()Z
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->isScoringEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
