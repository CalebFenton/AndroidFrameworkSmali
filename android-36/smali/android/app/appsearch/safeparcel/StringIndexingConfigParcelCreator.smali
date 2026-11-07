.class public final Landroid/app/appsearch/safeparcel/StringIndexingConfigParcelCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;",
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

.method static blacklist writeToParcel(Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;->getIndexingType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {p1, v1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;->getTokenizerType()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {p1, v0, p0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;
    .registers 7

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_28

    .line 4
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v2

    .line 5
    invoke-static {v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_23

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1e

    .line 6
    invoke-static {p1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 7
    :cond_1e
    invoke-static {p1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_6

    .line 8
    :cond_23
    invoke-static {p1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    goto :goto_6

    .line 9
    :cond_28
    invoke-static {p1, p0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 10
    new-instance p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

    invoke-direct {p0, v0, v1}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;-><init>(II)V

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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/safeparcel/StringIndexingConfigParcelCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/safeparcel/StringIndexingConfigParcelCreator;->newArray(I)[Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

    move-result-object p0

    return-object p0
.end method
