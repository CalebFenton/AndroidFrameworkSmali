.class final Landroid/app/assist/AssistStructure$ViewNodeText;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewNodeText"
.end annotation


# instance fields
.field greylist-max-o mHint:Ljava/lang/String;

.field greylist-max-o mLineBaselines:[I

.field greylist-max-o mLineCharOffsets:[I

.field greylist-max-o mText:Ljava/lang/CharSequence;

.field greylist-max-o mTextBackgroundColor:I

.field greylist-max-o mTextColor:I

.field greylist-max-o mTextSelectionEnd:I

.field greylist-max-o mTextSelectionStart:I

.field greylist-max-o mTextSize:F

.field greylist-max-o mTextStyle:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    .line 466
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    .line 474
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;Z)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "simple"    # Z

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    .line 466
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    .line 483
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    .line 487
    if-nez p2, :cond_4a

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    .line 495
    :cond_4a
    return-void
.end method


# virtual methods
.method greylist-max-o isSimple()Z
    .registers 3

    .line 477
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    if-nez v0, :cond_1a

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    if-nez v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method greylist-max-o writeToParcel(Landroid/os/Parcel;ZZ)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "simple"    # Z
    .param p3, "writeSensitive"    # Z

    .line 498
    if-eqz p3, :cond_5

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 499
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 500
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    if-nez p2, :cond_3a

    .line 503
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 507
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 508
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    :cond_3a
    return-void
.end method
