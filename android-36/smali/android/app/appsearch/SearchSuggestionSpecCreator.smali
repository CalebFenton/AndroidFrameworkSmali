.class public final Landroid/app/appsearch/SearchSuggestionSpecCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/SearchSuggestionSpec;",
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

.method static blacklist writeToParcel(Landroid/app/appsearch/SearchSuggestionSpec;Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSuggestionSpec;->getFilterNamespaces()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p1, v1, v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSuggestionSpec;->getFilterSchemas()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p1, v0, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    iget-object v1, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mFilterProperties:Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-static {p1, v0, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    iget-object v1, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mFilterDocumentIds:Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-static {p1, v0, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x5

    .line 35
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSuggestionSpec;->getRankingStrategy()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x6

    .line 43
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSuggestionSpec;->getMaximumResultCount()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x7

    .line 51
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSuggestionSpec;->getSearchStringParameters()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p1, v0, p0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/SearchSuggestionSpec;
    .registers 12

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v9, v6

    move v7, v1

    move v8, v7

    .line 3
    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_4c

    .line 4
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 5
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v1

    packed-switch v1, :pswitch_data_56

    .line 6
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 7
    :pswitch_22
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v0

    move-object v9, v0

    goto :goto_d

    .line 8
    :pswitch_28
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v8, v0

    goto :goto_d

    .line 9
    :pswitch_2e
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v7, v0

    goto :goto_d

    .line 10
    :pswitch_34
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v0

    move-object v6, v0

    goto :goto_d

    .line 11
    :pswitch_3a
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v0

    move-object v5, v0

    goto :goto_d

    .line 12
    :pswitch_40
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    goto :goto_d

    .line 13
    :pswitch_46
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v0

    move-object v3, v0

    goto :goto_d

    .line 14
    :cond_4c
    invoke-static {p1, p0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 15
    new-instance v2, Landroid/app/appsearch/SearchSuggestionSpec;

    invoke-direct/range {v2 .. v9}, Landroid/app/appsearch/SearchSuggestionSpec;-><init>(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;IILjava/util/List;)V

    return-object v2

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_46
        :pswitch_40
        :pswitch_3a
        :pswitch_34
        :pswitch_2e
        :pswitch_28
        :pswitch_22
    .end packed-switch
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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSuggestionSpecCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/SearchSuggestionSpec;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/SearchSuggestionSpec;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/SearchSuggestionSpec;

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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSuggestionSpecCreator;->newArray(I)[Landroid/app/appsearch/SearchSuggestionSpec;

    move-result-object p0

    return-object p0
.end method
