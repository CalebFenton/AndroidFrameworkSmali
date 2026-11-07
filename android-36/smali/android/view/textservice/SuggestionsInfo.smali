.class public final Landroid/view/textservice/SuggestionsInfo;
.super Ljava/lang/Object;
.source "SuggestionsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SuggestionsInfo$ResultAttrs;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textservice/SuggestionsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EMPTY:[Ljava/lang/String;

.field public static final whitelist RESULT_ATTR_DONT_SHOW_UI_FOR_SUGGESTIONS:I = 0x10

.field public static final whitelist RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS:I = 0x4

.field public static final whitelist RESULT_ATTR_IN_THE_DICTIONARY:I = 0x1

.field public static final whitelist RESULT_ATTR_LOOKS_LIKE_GRAMMAR_ERROR:I = 0x8

.field public static final whitelist RESULT_ATTR_LOOKS_LIKE_TYPO:I = 0x2


# instance fields
.field private greylist-max-o mCookie:I

.field private greylist-max-o mSequence:I

.field private final greylist-max-o mSuggestions:[Ljava/lang/String;

.field private final greylist-max-o mSuggestionsAttributes:I

.field private final greylist-max-o mSuggestionsAvailable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Landroid/view/textservice/SuggestionsInfo;->EMPTY:[Ljava/lang/String;

    .line 203
    new-instance v0, Landroid/view/textservice/SuggestionsInfo$1;

    invoke-direct {v0}, Landroid/view/textservice/SuggestionsInfo$1;-><init>()V

    sput-object v0, Landroid/view/textservice/SuggestionsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I[Ljava/lang/String;)V
    .registers 4
    .param p1, "suggestionsAttributes"    # I
    .param p2, "suggestions"    # [Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;II)V

    .line 99
    return-void
.end method

.method public constructor whitelist <init>(I[Ljava/lang/String;II)V
    .registers 6
    .param p1, "suggestionsAttributes"    # I
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "cookie"    # I
    .param p4, "sequence"    # I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-nez p2, :cond_d

    .line 111
    sget-object v0, Landroid/view/textservice/SuggestionsInfo;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    goto :goto_12

    .line 114
    :cond_d
    iput-object p2, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    .line 117
    :goto_12
    iput p1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    .line 118
    iput p3, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    .line 119
    iput p4, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    .line 120
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    iput-boolean v1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    .line 128
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCookie()I
    .registers 2

    .line 160
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    return v0
.end method

.method public whitelist getSequence()I
    .registers 2

    .line 167
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    return v0
.end method

.method public whitelist getSuggestionAt(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 197
    iget-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist getSuggestionsAttributes()I
    .registers 2

    .line 176
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    return v0
.end method

.method public whitelist getSuggestionsCount()I
    .registers 2

    .line 186
    iget-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    if-nez v0, :cond_6

    .line 187
    const/4 v0, -0x1

    return v0

    .line 189
    :cond_6
    iget-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public whitelist setCookieAndSequence(II)V
    .registers 3
    .param p1, "cookie"    # I
    .param p2, "sequence"    # I

    .line 152
    iput p1, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    .line 153
    iput p2, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    .line 154
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 138
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 140
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    return-void
.end method
