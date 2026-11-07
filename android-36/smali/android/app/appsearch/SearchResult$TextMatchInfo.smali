.class public final Landroid/app/appsearch/SearchResult$TextMatchInfo;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextMatchInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/SearchResult$TextMatchInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDocument:Landroid/app/appsearch/GenericDocument;

.field private blacklist mExactMatchRangeCached:Landroid/app/appsearch/SearchResult$MatchRange;

.field final blacklist mExactMatchRangeEnd:I

.field final blacklist mExactMatchRangeStart:I

.field private blacklist mFullText:Ljava/lang/String;

.field private blacklist mPropertyPath:Ljava/lang/String;

.field final blacklist mSnippetRangeEnd:I

.field final blacklist mSnippetRangeStart:I

.field private blacklist mSubmatchRangeCached:Landroid/app/appsearch/SearchResult$MatchRange;

.field final blacklist mSubmatchRangeEnd:I

.field final blacklist mSubmatchRangeStart:I

.field private blacklist mWindowRangeCached:Landroid/app/appsearch/SearchResult$MatchRange;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/TextMatchInfoCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/TextMatchInfoCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(IIIIII)V
    .registers 8

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mPropertyPath:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mDocument:Landroid/app/appsearch/GenericDocument;

    .line 8
    .line 9
    iput p1, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mExactMatchRangeStart:I

    .line 10
    .line 11
    iput p2, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mExactMatchRangeEnd:I

    .line 12
    .line 13
    iput p3, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSubmatchRangeStart:I

    .line 14
    .line 15
    iput p4, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSubmatchRangeEnd:I

    .line 16
    .line 17
    iput p5, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSnippetRangeStart:I

    .line 18
    .line 19
    iput p6, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSnippetRangeEnd:I

    .line 20
    .line 21
    return-void
.end method

.method private blacklist checkSubmatchSupported()V
    .registers 2

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSubmatchRangeStart:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p0, v0, :cond_6

    .line 5
    .line 6
    return-void

    .line 7
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 8
    .line 9
    const-string v0, "Submatch is not supported with this backend/Android API level combination"

    .line 10
    .line 11
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p0
.end method

.method private static blacklist getPropertyValues(Landroid/app/appsearch/GenericDocument;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_7

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "No content found for requested property path: "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method private blacklist getSubstring(Landroid/app/appsearch/SearchResult$MatchRange;)Ljava/lang/CharSequence;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getFullText()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult$MatchRange;->getStart()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult$MatchRange;->getEnd()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public blacklist getExactMatch()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getExactMatchRange()Landroid/app/appsearch/SearchResult$MatchRange;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getSubstring(Landroid/app/appsearch/SearchResult$MatchRange;)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public blacklist getExactMatchRange()Landroid/app/appsearch/SearchResult$MatchRange;
    .registers 4

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mExactMatchRangeCached:Landroid/app/appsearch/SearchResult$MatchRange;

    .line 2
    .line 3
    if-nez v0, :cond_f

    .line 4
    .line 5
    new-instance v0, Landroid/app/appsearch/SearchResult$MatchRange;

    .line 6
    .line 7
    iget v1, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mExactMatchRangeStart:I

    .line 8
    .line 9
    iget v2, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mExactMatchRangeEnd:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/app/appsearch/SearchResult$MatchRange;-><init>(II)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mExactMatchRangeCached:Landroid/app/appsearch/SearchResult$MatchRange;

    .line 15
    .line 16
    :cond_f
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mExactMatchRangeCached:Landroid/app/appsearch/SearchResult$MatchRange;

    .line 17
    .line 18
    return-object p0
.end method

.method public blacklist getFullText()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mFullText:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1b

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mDocument:Landroid/app/appsearch/GenericDocument;

    .line 6
    .line 7
    if-eqz v0, :cond_13

    .line 8
    .line 9
    iget-object v1, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mPropertyPath:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v1, :cond_13

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getPropertyValues(Landroid/app/appsearch/GenericDocument;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mFullText:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_1b

    .line 20
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "Document or property path has not been populated; this TextMatchInfo cannot be used yet"

    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1b
    :goto_1b
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mFullText:Ljava/lang/String;

    .line 29
    .line 30
    return-object p0
.end method

.method public blacklist getSnippet()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getSnippetRange()Landroid/app/appsearch/SearchResult$MatchRange;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getSubstring(Landroid/app/appsearch/SearchResult$MatchRange;)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public blacklist getSnippetRange()Landroid/app/appsearch/SearchResult$MatchRange;
    .registers 4

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mWindowRangeCached:Landroid/app/appsearch/SearchResult$MatchRange;

    .line 2
    .line 3
    if-nez v0, :cond_f

    .line 4
    .line 5
    new-instance v0, Landroid/app/appsearch/SearchResult$MatchRange;

    .line 6
    .line 7
    iget v1, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSnippetRangeStart:I

    .line 8
    .line 9
    iget v2, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSnippetRangeEnd:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/app/appsearch/SearchResult$MatchRange;-><init>(II)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mWindowRangeCached:Landroid/app/appsearch/SearchResult$MatchRange;

    .line 15
    .line 16
    :cond_f
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mWindowRangeCached:Landroid/app/appsearch/SearchResult$MatchRange;

    .line 17
    .line 18
    return-object p0
.end method

.method public blacklist getSubmatch()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->checkSubmatchSupported()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getSubmatchRange()Landroid/app/appsearch/SearchResult$MatchRange;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getSubstring(Landroid/app/appsearch/SearchResult$MatchRange;)Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public blacklist getSubmatchRange()Landroid/app/appsearch/SearchResult$MatchRange;
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->checkSubmatchSupported()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSubmatchRangeCached:Landroid/app/appsearch/SearchResult$MatchRange;

    .line 5
    .line 6
    if-nez v0, :cond_12

    .line 7
    .line 8
    new-instance v0, Landroid/app/appsearch/SearchResult$MatchRange;

    .line 9
    .line 10
    iget v1, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSubmatchRangeStart:I

    .line 11
    .line 12
    iget v2, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSubmatchRangeEnd:I

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Landroid/app/appsearch/SearchResult$MatchRange;-><init>(II)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSubmatchRangeCached:Landroid/app/appsearch/SearchResult$MatchRange;

    .line 18
    .line 19
    :cond_12
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mSubmatchRangeCached:Landroid/app/appsearch/SearchResult$MatchRange;

    .line 20
    .line 21
    return-object p0
.end method

.method blacklist setDocument(Landroid/app/appsearch/GenericDocument;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mDocument:Landroid/app/appsearch/GenericDocument;

    .line 5
    .line 6
    return-void
.end method

.method blacklist setPropertyPath(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/SearchResult$TextMatchInfo;->mPropertyPath:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/TextMatchInfoCreator;->writeToParcel(Landroid/app/appsearch/SearchResult$TextMatchInfo;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
