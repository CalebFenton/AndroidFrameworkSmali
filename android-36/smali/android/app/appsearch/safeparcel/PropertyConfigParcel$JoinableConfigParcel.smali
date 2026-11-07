.class public Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/safeparcel/PropertyConfigParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JoinableConfigParcel"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDeletePropagationType:I

.field private final blacklist mJoinableValueType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/JoinableConfigParcelCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/safeparcel/JoinableConfigParcelCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->mJoinableValueType:I

    .line 5
    .line 6
    iput p2, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->mDeletePropagationType:I

    .line 7
    .line 8
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
    instance-of v1, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;

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
    check-cast p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;

    .line 12
    .line 13
    iget v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->mJoinableValueType:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v3, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->mJoinableValueType:I

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    if-eqz v1, :cond_25

    .line 30
    .line 31
    iget p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->mDeletePropagationType:I

    .line 32
    .line 33
    iget p1, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->mDeletePropagationType:I

    .line 34
    .line 35
    if-ne p0, p1, :cond_25

    .line 36
    .line 37
    return v0

    .line 38
    :cond_25
    return v2
.end method

.method public blacklist getDeletePropagationType()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->mDeletePropagationType:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getJoinableValueType()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->mJoinableValueType:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->mJoinableValueType:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->mDeletePropagationType:I

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{joinableValueType: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->mJoinableValueType:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", deletePropagationType: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->mDeletePropagationType:I

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/safeparcel/JoinableConfigParcelCreator;->writeToParcel(Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
