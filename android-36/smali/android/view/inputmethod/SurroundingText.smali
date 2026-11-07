.class public final Landroid/view/inputmethod/SurroundingText;
.super Ljava/lang/Object;
.source "SurroundingText.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/SurroundingText;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mOffset:I

.field private final blacklist mSelectionEnd:I

.field private final blacklist mSelectionStart:I

.field private final blacklist mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 141
    new-instance v0, Landroid/view/inputmethod/SurroundingText$1;

    invoke-direct {v0}, Landroid/view/inputmethod/SurroundingText$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/SurroundingText;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "offset"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Landroid/view/inputmethod/SurroundingText;->copyWithParcelableSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    .line 79
    iput p2, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    .line 80
    iput p3, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    .line 81
    iput p4, p0, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    .line 82
    return-void
.end method

.method private static blacklist copyWithParcelableSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 169
    if-nez p0, :cond_4

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_4
    const/4 v0, 0x0

    .line 174
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    .line 175
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 176
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 177
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1f

    .line 179
    if-eqz v0, :cond_1e

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    :cond_1e
    return-object v1

    .line 179
    :catchall_1f
    move-exception v1

    if-eqz v0, :cond_25

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    :cond_25
    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOffset()I
    .registers 2

    .line 124
    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    return v0
.end method

.method public whitelist getSelectionEnd()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    return v0
.end method

.method public whitelist getSelectionStart()I
    .registers 2

    .line 101
    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist isEqualTo(Landroid/view/inputmethod/SurroundingText;)Z
    .registers 6
    .param p1, "that"    # Landroid/view/inputmethod/SurroundingText;

    .line 187
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 188
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 189
    :cond_8
    iget v2, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    iget v3, p1, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    if-ne v2, v3, :cond_26

    iget v2, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    iget v3, p1, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    if-ne v2, v3, :cond_26

    iget v2, p0, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    iget v3, p1, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    if-ne v2, v3, :cond_26

    iget-object v2, p0, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    .line 192
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    move v0, v1

    goto :goto_27

    :cond_26
    nop

    .line 189
    :goto_27
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    iget-object v0, p0, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 130
    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void
.end method
