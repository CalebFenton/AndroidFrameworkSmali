.class public final Landroid/app/appsearch/TextMatchInfoCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/SearchResult$TextMatchInfo;",
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

.method static blacklist writeToParcel(Landroid/app/appsearch/SearchResult$TextMatchInfo;Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget v0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mExactMatchRangeStart:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iget v1, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mExactMatchRangeEnd:I

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    iget v1, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSubmatchRangeStart:I

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    iget v1, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSubmatchRangeEnd:I

    .line 25
    .line 26
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x5

    .line 30
    iget v1, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSnippetRangeStart:I

    .line 31
    .line 32
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x6

    .line 36
    iget p0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSnippetRangeEnd:I

    .line 37
    .line 38
    invoke-static {p1, v0, p0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/SearchResult$TextMatchInfo;
    .registers 10

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 3
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_44

    .line 4
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 5
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    .line 6
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 7
    :pswitch_20
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v7, v0

    goto :goto_b

    .line 8
    :pswitch_26
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v6, v0

    goto :goto_b

    .line 9
    :pswitch_2c
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v5, v0

    goto :goto_b

    .line 10
    :pswitch_32
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v4, v0

    goto :goto_b

    .line 11
    :pswitch_38
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v3, v0

    goto :goto_b

    .line 12
    :pswitch_3e
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v2, v0

    goto :goto_b

    .line 13
    :cond_44
    invoke-static {p1, p0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 14
    new-instance v1, Landroid/app/appsearch/SearchResult$TextMatchInfo;

    invoke-direct/range {v1 .. v7}, Landroid/app/appsearch/SearchResult$TextMatchInfo;-><init>(IIIIII)V

    return-object v1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/TextMatchInfoCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/SearchResult$TextMatchInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/SearchResult$TextMatchInfo;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/SearchResult$TextMatchInfo;

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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/TextMatchInfoCreator;->newArray(I)[Landroid/app/appsearch/SearchResult$TextMatchInfo;

    move-result-object p0

    return-object p0
.end method
