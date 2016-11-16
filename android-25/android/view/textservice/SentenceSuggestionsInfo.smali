.class public final Landroid/view/textservice/SentenceSuggestionsInfo;
.super Ljava/lang/Object;
.source "SentenceSuggestionsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SentenceSuggestionsInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/textservice/SentenceSuggestionsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLengths:[I

.field private final mOffsets:[I

.field private final mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 133
    new-instance v0, Landroid/view/textservice/SentenceSuggestionsInfo$1;

    #@2
    invoke-direct {v0}, Landroid/view/textservice/SentenceSuggestionsInfo$1;-><init>()V

    #@5
    .line 132
    sput-object v0, Landroid/view/textservice/SentenceSuggestionsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    .line 61
    .local v0, "infoSize":I
    new-array v1, v0, [Landroid/view/textservice/SuggestionsInfo;

    #@9
    iput-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    #@b
    .line 62
    iget-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    #@d
    sget-object v2, Landroid/view/textservice/SuggestionsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    #@12
    .line 63
    iget-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    #@14
    array-length v1, v1

    #@15
    new-array v1, v1, [I

    #@17
    iput-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mOffsets:[I

    #@19
    .line 64
    iget-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mOffsets:[I

    #@1b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    #@1e
    .line 65
    iget-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    #@20
    array-length v1, v1

    #@21
    new-array v1, v1, [I

    #@23
    iput-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mLengths:[I

    #@25
    .line 66
    iget-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mLengths:[I

    #@27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    #@2a
    .line 59
    return-void
.end method

.method public constructor <init>([Landroid/view/textservice/SuggestionsInfo;[I[I)V
    .locals 3
    .param p1, "suggestionsInfos"    # [Landroid/view/textservice/SuggestionsInfo;
    .param p2, "offsets"    # [I
    .param p3, "lengths"    # [I

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 48
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@9
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@c
    throw v1

    #@d
    .line 47
    :cond_1
    if-eqz p3, :cond_0

    #@f
    .line 50
    array-length v1, p1

    #@10
    array-length v2, p2

    #@11
    if-ne v1, v2, :cond_2

    #@13
    array-length v1, p2

    #@14
    array-length v2, p3

    #@15
    if-eq v1, v2, :cond_3

    #@17
    .line 51
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@19
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1c
    throw v1

    #@1d
    .line 53
    :cond_3
    array-length v0, p1

    #@1e
    .line 54
    .local v0, "infoSize":I
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, [Landroid/view/textservice/SuggestionsInfo;

    #@24
    iput-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    #@26
    .line 55
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mOffsets:[I

    #@2c
    .line 56
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@2f
    move-result-object v1

    #@30
    iput-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mLengths:[I

    #@32
    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 86
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLengthAt(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 123
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mLengths:[I

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 124
    iget-object v0, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mLengths:[I

    #@9
    aget v0, v0, p1

    #@b
    return v0

    #@c
    .line 126
    :cond_0
    const/4 v0, -0x1

    #@d
    return v0
.end method

.method public getOffsetAt(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 112
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mOffsets:[I

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 113
    iget-object v0, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mOffsets:[I

    #@9
    aget v0, v0, p1

    #@b
    return v0

    #@c
    .line 115
    :cond_0
    const/4 v0, -0x1

    #@d
    return v0
.end method

.method public getSuggestionsCount()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 101
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 102
    iget-object v0, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    #@9
    aget-object v0, v0, p1

    #@b
    return-object v0

    #@c
    .line 104
    :cond_0
    const/4 v0, 0x0

    #@d
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 77
    iget-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    #@2
    array-length v0, v1

    #@3
    .line 78
    .local v0, "infoSize":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 79
    iget-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@c
    .line 80
    iget-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mOffsets:[I

    #@e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@11
    .line 81
    iget-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mLengths:[I

    #@13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@16
    .line 76
    return-void
.end method
