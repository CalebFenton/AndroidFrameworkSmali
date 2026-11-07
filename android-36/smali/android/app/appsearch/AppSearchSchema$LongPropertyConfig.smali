.class public final Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;
.super Landroid/app/appsearch/AppSearchSchema$PropertyConfig;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/AppSearchSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongPropertyConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;,
        Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$IndexingType;
    }
.end annotation


# static fields
.field public static final whitelist INDEXING_TYPE_NONE:I = 0x0

.field public static final whitelist INDEXING_TYPE_RANGE:I = 0x1


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
.method blacklist appendLongPropertyConfigFields(Landroid/app/appsearch/util/IndentingStringBuilder;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;->getIndexingType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_15

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_f

    .line 9
    .line 10
    const-string p0, "indexingType: INDEXING_TYPE_UNKNOWN,\n"

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    const-string p0, "indexingType: INDEXING_TYPE_RANGE,\n"

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    const-string p0, "indexingType: INDEXING_TYPE_NONE,\n"

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public whitelist getIndexingType()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getIntegerIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;->getIndexingType()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

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
