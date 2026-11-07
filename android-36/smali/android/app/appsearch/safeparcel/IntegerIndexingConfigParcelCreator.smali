.class public final Landroid/app/appsearch/safeparcel/IntegerIndexingConfigParcelCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CONTENT_DESCRIPTION:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static blacklist writeToParcel(Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;->getIndexingType()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {p1, v0, p0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;
    .registers 6

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    .line 3
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_1f

    .line 4
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v1

    .line 5
    invoke-static {v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1a

    .line 6
    invoke-static {p1, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 7
    :cond_1a
    invoke-static {p1, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    goto :goto_5

    .line 8
    :cond_1f
    invoke-static {p1, p0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 9
    new-instance p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    invoke-direct {p0, v0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;-><init>(I)V

    return-object p0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/appsearch/safeparcel/IntegerIndexingConfigParcelCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/appsearch/safeparcel/IntegerIndexingConfigParcelCreator;->newArray(I)[Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    move-result-object p0

    return-object p0
.end method
