.class public final Landroid/view/textservice/SuggestionsInfo;
.super Ljava/lang/Object;
.source "SuggestionsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SuggestionsInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/textservice/SuggestionsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:[Ljava/lang/String;

.field public static final RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS:I = 0x4

.field public static final RESULT_ATTR_IN_THE_DICTIONARY:I = 0x1

.field public static final RESULT_ATTR_LOOKS_LIKE_TYPO:I = 0x2


# instance fields
.field private mCookie:I

.field private mSequence:I

.field private final mSuggestions:[Ljava/lang/String;

.field private final mSuggestionsAttributes:I

.field private final mSuggestionsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 28
    const-class v0, Ljava/lang/String;

    #@2
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    sput-object v0, Landroid/view/textservice/SuggestionsInfo;->EMPTY:[Ljava/lang/String;

    #@a
    .line 166
    new-instance v0, Landroid/view/textservice/SuggestionsInfo$1;

    #@c
    invoke-direct {v0}, Landroid/view/textservice/SuggestionsInfo$1;-><init>()V

    #@f
    .line 165
    sput-object v0, Landroid/view/textservice/SuggestionsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11
    .line 27
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "suggestionsAttributes"    # I
    .param p2, "suggestions"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 60
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;II)V

    #@4
    .line 59
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;II)V
    .locals 1
    .param p1, "suggestionsAttributes"    # I
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "cookie"    # I
    .param p4, "sequence"    # I

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    if-nez p2, :cond_0

    #@5
    .line 73
    sget-object v0, Landroid/view/textservice/SuggestionsInfo;->EMPTY:[Ljava/lang/String;

    #@7
    iput-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    #@9
    .line 74
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    #@c
    .line 79
    :goto_0
    iput p1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    #@e
    .line 80
    iput p3, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    #@10
    .line 81
    iput p4, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    #@12
    .line 71
    return-void

    #@13
    .line 76
    :cond_0
    iput-object p2, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    #@15
    .line 77
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    #@18
    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    #@a
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    #@10
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    iput v1, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    #@16
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    #@1c
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v1

    #@20
    if-ne v1, v0, :cond_0

    #@22
    :goto_0
    iput-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    #@24
    .line 84
    return-void

    #@25
    .line 89
    :cond_0
    const/4 v0, 0x0

    #@26
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 183
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCookie()I
    .locals 1

    #@0
    .prologue
    .line 122
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    #@2
    return v0
.end method

.method public getSequence()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    #@2
    return v0
.end method

.method public getSuggestionAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getSuggestionsAttributes()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    #@2
    return v0
.end method

.method public getSuggestionsCount()I
    .locals 1

    #@0
    .prologue
    .line 148
    iget-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 149
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 151
    :cond_0
    iget-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    #@8
    array-length v0, v0

    #@9
    return v0
.end method

.method public setCookieAndSequence(II)V
    .locals 0
    .param p1, "cookie"    # I
    .param p2, "sequence"    # I

    #@0
    .prologue
    .line 114
    iput p1, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    #@2
    .line 115
    iput p2, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    #@4
    .line 113
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 101
    iget-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@a
    .line 102
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 103
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 104
    iget-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 99
    return-void

    #@1d
    .line 104
    :cond_0
    const/4 v0, 0x0

    #@1e
    goto :goto_0
.end method
