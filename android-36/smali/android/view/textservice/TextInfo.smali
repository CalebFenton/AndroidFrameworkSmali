.class public final Landroid/view/textservice/TextInfo;
.super Ljava/lang/Object;
.source "TextInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textservice/TextInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_COOKIE:I

.field private static final greylist-max-o DEFAULT_SEQUENCE_NUMBER:I


# instance fields
.field private final greylist-max-o mCharSequence:Ljava/lang/CharSequence;

.field private final greylist-max-o mCookie:I

.field private final greylist-max-o mSequenceNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 141
    new-instance v0, Landroid/view/textservice/TextInfo$1;

    invoke-direct {v0}, Landroid/view/textservice/TextInfo$1;-><init>()V

    sput-object v0, Landroid/view/textservice/TextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textservice/TextInfo;->mSequenceNumber:I

    .line 91
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;IIII)V
    .registers 10
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "cookie"    # I
    .param p5, "sequenceNumber"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 73
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 76
    .local v0, "spannableString":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Landroid/text/style/SpellCheckSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SpellCheckSpan;

    .line 78
    .local v1, "spans":[Landroid/text/style/SpellCheckSpan;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    array-length v3, v1

    if-ge v2, v3, :cond_27

    .line 79
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 82
    .end local v2    # "i":I
    :cond_27
    iput-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    .line 83
    iput p4, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    .line 84
    iput p5, p0, Landroid/view/textservice/TextInfo;->mSequenceNumber:I

    .line 85
    return-void

    .line 70
    .end local v0    # "spannableString":Landroid/text/SpannableStringBuilder;
    .end local v1    # "spans":[Landroid/text/style/SpellCheckSpan;
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charSequence is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/String;

    .line 42
    invoke-static {p1}, Landroid/view/textservice/TextInfo;->getStringLengthOrZero(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "text":Ljava/lang/String;
    .local v1, "text":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    .line 43
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cookie"    # I
    .param p3, "sequenceNumber"    # I

    .line 52
    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/textservice/TextInfo;->getStringLengthOrZero(Ljava/lang/String;)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "cookie":I
    .end local p3    # "sequenceNumber":I
    .local v1, "text":Ljava/lang/String;
    .local v4, "cookie":I
    .local v5, "sequenceNumber":I
    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    .line 53
    return-void
.end method

.method private static greylist-max-o getStringLengthOrZero(Ljava/lang/String;)I
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_c
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCharSequence()Ljava/lang/CharSequence;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getCookie()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    return v0
.end method

.method public whitelist getSequence()I
    .registers 2

    .line 135
    iget v0, p0, Landroid/view/textservice/TextInfo;->mSequenceNumber:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_6
    iget-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 101
    iget-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 102
    iget v0, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/view/textservice/TextInfo;->mSequenceNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void
.end method
