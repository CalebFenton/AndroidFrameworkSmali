.class public Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/safeparcel/PropertyConfigParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentIndexingConfigParcel"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIndexNestedProperties:Z

.field private final blacklist mIndexableNestedPropertiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/DocumentIndexingConfigParcelCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/safeparcel/DocumentIndexingConfigParcelCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(ZLjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->mIndexNestedProperties:Z

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->mIndexableNestedPropertiesList:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;

    .line 12
    .line 13
    iget-boolean v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->mIndexNestedProperties:Z

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-boolean v3, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->mIndexNestedProperties:Z

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_29

    .line 30
    .line 31
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->mIndexableNestedPropertiesList:Ljava/util/List;

    .line 32
    .line 33
    iget-object p1, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->mIndexableNestedPropertiesList:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_29

    .line 40
    .line 41
    return v0

    .line 42
    :cond_29
    return v2
.end method

.method public blacklist getIndexableNestedPropertiesList()Ljava/util/List;
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
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->mIndexableNestedPropertiesList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->mIndexNestedProperties:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->mIndexableNestedPropertiesList:Ljava/util/List;

    .line 8
    .line 9
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public blacklist shouldIndexNestedProperties()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->mIndexNestedProperties:Z

    .line 2
    .line 3
    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{indexNestedProperties: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->mIndexNestedProperties:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", indexableNestedPropertiesList: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->mIndexableNestedPropertiesList:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "}"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/safeparcel/DocumentIndexingConfigParcelCreator;->writeToParcel(Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
