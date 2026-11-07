.class public final Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;
.super Landroid/app/appsearch/AppSearchSchema$PropertyConfig;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/AppSearchSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentPropertyConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;
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
.method blacklist appendDocumentPropertyConfigFields(Landroid/app/appsearch/util/IndentingStringBuilder;)V
    .registers 5

    .line 1
    const-string v0, "shouldIndexNestedProperties: "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;->shouldIndexNestedProperties()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/Object;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, ",\n"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, "indexableNestedProperties: "

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;->getIndexableNestedProperties()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/Object;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, "schemaType: \""

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;->getSchemaType()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, "\",\n"

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public whitelist getIndexableNestedProperties()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getDocumentIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_b

    .line 8
    .line 9
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->getIndexableNestedPropertiesList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_14

    .line 17
    .line 18
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_14
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public whitelist getSchemaType()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getSchemaType()Ljava/lang/String;

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

.method public whitelist shouldIndexNestedProperties()Z
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getDocumentIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;

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
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->shouldIndexNestedProperties()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method
