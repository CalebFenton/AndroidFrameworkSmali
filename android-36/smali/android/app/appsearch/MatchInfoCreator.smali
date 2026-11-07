.class public final Landroid/app/appsearch/MatchInfoCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/SearchResult$MatchInfo;",
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

.method static blacklist writeToParcel(Landroid/app/appsearch/SearchResult$MatchInfo;Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult$MatchInfo;->getPropertyPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget v2, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mExactMatchRangeStart:I

    .line 16
    .line 17
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    iget v2, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mExactMatchRangeEnd:I

    .line 22
    .line 23
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    iget v2, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mSubmatchRangeStart:I

    .line 28
    .line 29
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    iget v2, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mSubmatchRangeEnd:I

    .line 34
    .line 35
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x6

    .line 39
    iget v2, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mSnippetRangeStart:I

    .line 40
    .line 41
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x7

    .line 45
    iget v2, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mSnippetRangeEnd:I

    .line 46
    .line 47
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 48
    .line 49
    .line 50
    const/16 v1, 0x8

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult$MatchInfo;->getTextMatch()Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 57
    .line 58
    .line 59
    const/16 v1, 0x9

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult$MatchInfo;->getEmbeddingMatch()Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p1, v1, p0, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 69
    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/SearchResult$MatchInfo;
    .registers 14

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v10, v3

    move-object v11, v10

    move v4, v1

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    .line 3
    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_62

    .line 4
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 5
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v1

    packed-switch v1, :pswitch_data_6c

    .line 6
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 7
    :pswitch_24
    sget-object v1, Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;

    move-object v11, v0

    goto :goto_f

    .line 9
    :pswitch_2e
    sget-object v1, Landroid/app/appsearch/SearchResult$TextMatchInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/SearchResult$TextMatchInfo;

    move-object v10, v0

    goto :goto_f

    .line 11
    :pswitch_38
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v9, v0

    goto :goto_f

    .line 12
    :pswitch_3e
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v8, v0

    goto :goto_f

    .line 13
    :pswitch_44
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v7, v0

    goto :goto_f

    .line 14
    :pswitch_4a
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v6, v0

    goto :goto_f

    .line 15
    :pswitch_50
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v5, v0

    goto :goto_f

    .line 16
    :pswitch_56
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v4, v0

    goto :goto_f

    .line 17
    :pswitch_5c
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_f

    .line 18
    :cond_62
    invoke-static {p1, p0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 19
    new-instance v2, Landroid/app/appsearch/SearchResult$MatchInfo;

    invoke-direct/range {v2 .. v11}, Landroid/app/appsearch/SearchResult$MatchInfo;-><init>(Ljava/lang/String;IIIIIILandroid/app/appsearch/SearchResult$TextMatchInfo;Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;)V

    return-object v2

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_56
        :pswitch_50
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_38
        :pswitch_2e
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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/MatchInfoCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/SearchResult$MatchInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/SearchResult$MatchInfo;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/SearchResult$MatchInfo;

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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/MatchInfoCreator;->newArray(I)[Landroid/app/appsearch/SearchResult$MatchInfo;

    move-result-object p0

    return-object p0
.end method
