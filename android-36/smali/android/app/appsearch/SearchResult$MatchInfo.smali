.class public final Landroid/app/appsearch/SearchResult$MatchInfo;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MatchInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/SearchResult$MatchInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/SearchResult$MatchInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDocument:Landroid/app/appsearch/GenericDocument;

.field private final blacklist mEmbeddingMatch:Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;

.field final blacklist mExactMatchRangeEnd:I

.field final blacklist mExactMatchRangeStart:I

.field private final blacklist mPropertyPath:Ljava/lang/String;

.field private blacklist mPropertyPathObject:Landroid/app/appsearch/PropertyPath;

.field final blacklist mSnippetRangeEnd:I

.field final blacklist mSnippetRangeStart:I

.field final blacklist mSubmatchRangeEnd:I

.field final blacklist mSubmatchRangeStart:I

.field private final blacklist mTextMatch:Landroid/app/appsearch/SearchResult$TextMatchInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDocument(Landroid/app/appsearch/SearchResult$MatchInfo;)Landroid/app/appsearch/GenericDocument;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mDocument:Landroid/app/appsearch/GenericDocument;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPropertyPath(Landroid/app/appsearch/SearchResult$MatchInfo;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mPropertyPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextMatch(Landroid/app/appsearch/SearchResult$MatchInfo;)Landroid/app/appsearch/SearchResult$TextMatchInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mTextMatch:Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/MatchInfoCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/MatchInfoCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/SearchResult$MatchInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;IIIIIILandroid/app/appsearch/SearchResult$TextMatchInfo;Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mPropertyPathObject:Landroid/app/appsearch/PropertyPath;

    .line 6
    .line 7
    iput-object v0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mDocument:Landroid/app/appsearch/GenericDocument;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mPropertyPath:Ljava/lang/String;

    .line 13
    .line 14
    iput p2, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mExactMatchRangeStart:I

    .line 15
    .line 16
    iput p3, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mExactMatchRangeEnd:I

    .line 17
    .line 18
    iput p4, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mSubmatchRangeStart:I

    .line 19
    .line 20
    iput p5, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mSubmatchRangeEnd:I

    .line 21
    .line 22
    iput p6, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mSnippetRangeStart:I

    .line 23
    .line 24
    iput p7, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mSnippetRangeEnd:I

    .line 25
    .line 26
    iput-object p9, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mEmbeddingMatch:Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;

    .line 27
    .line 28
    if-nez p8, :cond_30

    .line 29
    .line 30
    if-nez p9, :cond_30

    .line 31
    .line 32
    new-instance p8, Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 33
    .line 34
    move v1, p3

    .line 35
    move p3, p2

    .line 36
    move-object p2, p8

    .line 37
    move p8, p7

    .line 38
    move p7, p6

    .line 39
    move p6, p5

    .line 40
    move p5, p4

    .line 41
    move p4, v1

    .line 42
    invoke-direct/range {p2 .. p8}, Landroid/app/appsearch/SearchResult$TextMatchInfo;-><init>(IIIIII)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->setPropertyPath(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    move-object p8, p2

    .line 49
    :cond_30
    iput-object p8, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mTextMatch:Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public blacklist getEmbeddingMatch()Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mEmbeddingMatch:Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getExactMatch()Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mTextMatch:Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 2
    .line 3
    if-nez p0, :cond_7

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getExactMatch()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public whitelist getExactMatchRange()Landroid/app/appsearch/SearchResult$MatchRange;
    .registers 2

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mTextMatch:Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 2
    .line 3
    if-nez p0, :cond_b

    .line 4
    .line 5
    new-instance p0, Landroid/app/appsearch/SearchResult$MatchRange;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, v0}, Landroid/app/appsearch/SearchResult$MatchRange;-><init>(II)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getExactMatchRange()Landroid/app/appsearch/SearchResult$MatchRange;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public whitelist getFullText()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mTextMatch:Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 2
    .line 3
    if-nez p0, :cond_7

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getFullText()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public whitelist getPropertyPath()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mPropertyPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getPropertyPathObject()Landroid/app/appsearch/PropertyPath;
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mPropertyPathObject:Landroid/app/appsearch/PropertyPath;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    new-instance v0, Landroid/app/appsearch/PropertyPath;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mPropertyPath:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mPropertyPathObject:Landroid/app/appsearch/PropertyPath;

    .line 13
    .line 14
    :cond_d
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mPropertyPathObject:Landroid/app/appsearch/PropertyPath;

    .line 15
    .line 16
    return-object p0
.end method

.method public whitelist getSnippet()Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mTextMatch:Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 2
    .line 3
    if-nez p0, :cond_7

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getSnippet()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public whitelist getSnippetRange()Landroid/app/appsearch/SearchResult$MatchRange;
    .registers 2

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mTextMatch:Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 2
    .line 3
    if-nez p0, :cond_b

    .line 4
    .line 5
    new-instance p0, Landroid/app/appsearch/SearchResult$MatchRange;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, v0}, Landroid/app/appsearch/SearchResult$MatchRange;-><init>(II)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getSnippetRange()Landroid/app/appsearch/SearchResult$MatchRange;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public whitelist getSubmatch()Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mTextMatch:Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 2
    .line 3
    if-nez p0, :cond_7

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getSubmatch()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public whitelist getSubmatchRange()Landroid/app/appsearch/SearchResult$MatchRange;
    .registers 2

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mTextMatch:Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 2
    .line 3
    if-nez p0, :cond_b

    .line 4
    .line 5
    new-instance p0, Landroid/app/appsearch/SearchResult$MatchRange;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, v0}, Landroid/app/appsearch/SearchResult$MatchRange;-><init>(II)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->getSubmatchRange()Landroid/app/appsearch/SearchResult$MatchRange;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public blacklist getTextMatch()Landroid/app/appsearch/SearchResult$TextMatchInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mTextMatch:Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method blacklist setDocument(Landroid/app/appsearch/GenericDocument;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mDocument:Landroid/app/appsearch/GenericDocument;

    .line 5
    .line 6
    iget-object p0, p0, Landroid/app/appsearch/SearchResult$MatchInfo;->mTextMatch:Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 7
    .line 8
    if-eqz p0, :cond_c

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->setDocument(Landroid/app/appsearch/GenericDocument;)V

    .line 11
    .line 12
    .line 13
    :cond_c
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/MatchInfoCreator;->writeToParcel(Landroid/app/appsearch/SearchResult$MatchInfo;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
