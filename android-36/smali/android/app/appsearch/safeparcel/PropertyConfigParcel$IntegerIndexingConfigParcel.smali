.class public Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/safeparcel/PropertyConfigParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntegerIndexingConfigParcel"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIndexingType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/IntegerIndexingConfigParcelCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/safeparcel/IntegerIndexingConfigParcelCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;->mIndexingType:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

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
    check-cast p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    .line 12
    .line 13
    iget p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;->mIndexingType:I

    .line 14
    .line 15
    iget p1, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;->mIndexingType:I

    .line 16
    .line 17
    if-ne p0, p1, :cond_13

    .line 18
    .line 19
    return v0

    .line 20
    :cond_13
    return v2
.end method

.method public blacklist getIndexingType()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;->mIndexingType:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;->mIndexingType:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{indexingType: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;->mIndexingType:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "}"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/safeparcel/IntegerIndexingConfigParcelCreator;->writeToParcel(Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
