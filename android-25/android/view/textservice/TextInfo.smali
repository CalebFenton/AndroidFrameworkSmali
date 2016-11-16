.class public final Landroid/view/textservice/TextInfo;
.super Ljava/lang/Object;
.source "TextInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/TextInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/textservice/TextInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_COOKIE:I

.field private static final DEFAULT_SEQUENCE_NUMBER:I


# instance fields
.field private final mCharSequence:Ljava/lang/CharSequence;

.field private final mCookie:I

.field private final mSequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 142
    new-instance v0, Landroid/view/textservice/TextInfo$1;

    #@2
    invoke-direct {v0}, Landroid/view/textservice/TextInfo$1;-><init>()V

    #@5
    .line 141
    sput-object v0, Landroid/view/textservice/TextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/CharSequence;

    #@b
    iput-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    #@d
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    #@13
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Landroid/view/textservice/TextInfo;->mSequenceNumber:I

    #@19
    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IIII)V
    .locals 6
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "cookie"    # I
    .param p5, "sequenceNumber"    # I

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 70
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v4, "charSequence is empty"

    #@e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v3

    #@12
    .line 74
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    #@14
    invoke-direct {v1, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    #@17
    .line 76
    .local v1, "spannableString":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    #@1a
    move-result v3

    #@1b
    .line 77
    const-class v4, Landroid/text/style/SpellCheckSpan;

    #@1d
    .line 76
    const/4 v5, 0x0

    #@1e
    invoke-virtual {v1, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, [Landroid/text/style/SpellCheckSpan;

    #@24
    .line 78
    .local v2, "spans":[Landroid/text/style/SpellCheckSpan;
    const/4 v0, 0x0

    #@25
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@26
    if-ge v0, v3, :cond_1

    #@28
    .line 79
    aget-object v3, v2, v0

    #@2a
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    #@2d
    .line 78
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 82
    :cond_1
    iput-object v1, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    #@32
    .line 83
    iput p4, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    #@34
    .line 84
    iput p5, p0, Landroid/view/textservice/TextInfo;->mSequenceNumber:I

    #@36
    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 42
    invoke-static {p1}, Landroid/view/textservice/TextInfo;->getStringLengthOrZero(Ljava/lang/String;)I

    #@4
    move-result v3

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move v4, v2

    #@8
    move v5, v2

    #@9
    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    #@c
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cookie"    # I
    .param p3, "sequenceNumber"    # I

    #@0
    .prologue
    .line 52
    invoke-static {p1}, Landroid/view/textservice/TextInfo;->getStringLengthOrZero(Ljava/lang/String;)I

    #@3
    move-result v3

    #@4
    const/4 v2, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move v4, p2

    #@8
    move v5, p3

    #@9
    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    #@c
    .line 51
    return-void
.end method

.method private static getStringLengthOrZero(Ljava/lang/String;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 159
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCharSequence()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getCookie()I
    .locals 1

    #@0
    .prologue
    .line 128
    iget v0, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    #@2
    return v0
.end method

.method public getSequence()I
    .locals 1

    #@0
    .prologue
    .line 135
    iget v0, p0, Landroid/view/textservice/TextInfo;->mSequenceNumber:I

    #@2
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 110
    iget-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 111
    return-object v1

    #@6
    .line 113
    :cond_0
    iget-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    #@8
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    #@2
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@5
    .line 102
    iget v0, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 103
    iget v0, p0, Landroid/view/textservice/TextInfo;->mSequenceNumber:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 100
    return-void
.end method
