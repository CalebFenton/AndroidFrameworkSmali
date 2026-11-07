.class public final Landroid/app/appsearch/SearchResultCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/SearchResult;",
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

.method static blacklist writeToParcel(Landroid/app/appsearch/SearchResult;Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/app/appsearch/SearchResult;->mDocument:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1, v2, v1, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    iget-object v1, p0, Landroid/app/appsearch/SearchResult;->mMatchInfos:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {p1, p2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x3

    .line 19
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {p1, p2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x4

    .line 27
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult;->getDatabaseName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {p1, p2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    const/4 p2, 0x5

    .line 35
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult;->getRankingSignal()D

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-static {p1, p2, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 40
    .line 41
    .line 42
    const/4 p2, 0x6

    .line 43
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult;->getJoinedResults()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {p1, p2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 48
    .line 49
    .line 50
    const/4 p2, 0x7

    .line 51
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult;->getInformationalRankingSignals()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {p1, p2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeDoubleList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 56
    .line 57
    .line 58
    const/16 p2, 0x8

    .line 59
    .line 60
    iget-object p0, p0, Landroid/app/appsearch/SearchResult;->mParentTypeMap:Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-static {p1, p2, p0, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 66
    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/SearchResult;
    .registers 15

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v10, v7

    move-object v11, v10

    move-object v12, v11

    move-wide v8, v1

    .line 3
    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_5c

    .line 4
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 5
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v1

    packed-switch v1, :pswitch_data_66

    .line 6
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 7
    :pswitch_24
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v0

    move-object v12, v0

    goto :goto_f

    .line 8
    :pswitch_2a
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createDoubleList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v0

    move-object v11, v0

    goto :goto_f

    .line 9
    :pswitch_30
    sget-object v1, Landroid/app/appsearch/SearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v10, v0

    goto :goto_f

    .line 11
    :pswitch_38
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readDouble(Landroid/os/Parcel;I)D

    move-result-wide v0

    move-wide v8, v0

    goto :goto_f

    .line 12
    :pswitch_3e
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_f

    .line 13
    :pswitch_44
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_f

    .line 14
    :pswitch_4a
    sget-object v1, Landroid/app/appsearch/SearchResult$MatchInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v5, v0

    goto :goto_f

    .line 16
    :pswitch_52
    sget-object v1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    move-object v4, v0

    goto :goto_f

    .line 18
    :cond_5c
    invoke-static {p1, p0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 19
    new-instance v3, Landroid/app/appsearch/SearchResult;

    invoke-direct/range {v3 .. v12}, Landroid/app/appsearch/SearchResult;-><init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;DLjava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    return-object v3

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_38
        :pswitch_30
        :pswitch_2a
        :pswitch_24
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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchResultCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/SearchResult;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/SearchResult;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/SearchResult;

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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchResultCreator;->newArray(I)[Landroid/app/appsearch/SearchResult;

    move-result-object p0

    return-object p0
.end method
