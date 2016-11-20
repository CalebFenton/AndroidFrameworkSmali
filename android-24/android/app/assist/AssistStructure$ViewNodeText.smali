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
.field mHint:Ljava/lang/String;

.field mLineBaselines:[I

.field mLineCharOffsets:[I

.field mText:Ljava/lang/CharSequence;

.field mTextBackgroundColor:I

.field mTextColor:I

.field mTextSelectionEnd:I

.field mTextSelectionStart:I

.field mTextSize:F

.field mTextStyle:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 343
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    #@6
    .line 344
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    #@8
    .line 351
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Z)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "simple"    # Z

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 343
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    #@6
    .line 344
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    #@8
    .line 361
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@a
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/CharSequence;

    #@10
    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    #@12
    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    #@18
    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    #@1e
    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    #@24
    .line 365
    if-nez p2, :cond_0

    #@26
    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    #@2c
    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    #@32
    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v0

    #@36
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    #@38
    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    #@3e
    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    #@44
    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    #@4a
    .line 360
    :cond_0
    return-void
.end method


# virtual methods
.method isSimple()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 355
    iget v2, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    #@4
    if-ne v2, v0, :cond_1

    #@6
    .line 356
    iget v2, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    #@8
    if-nez v2, :cond_1

    #@a
    iget v2, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    #@c
    if-nez v2, :cond_1

    #@e
    .line 357
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    #@10
    if-nez v2, :cond_1

    #@12
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    #@14
    if-nez v2, :cond_1

    #@16
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 355
    :goto_0
    return v0

    #@1b
    :cond_0
    move v0, v1

    #@1c
    .line 357
    goto :goto_0

    #@1d
    :cond_1
    move v0, v1

    #@1e
    .line 355
    goto :goto_0
.end method

.method writeToParcel(Landroid/os/Parcel;Z)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "simple"    # Z

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@6
    .line 377
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@b
    .line 378
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 379
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 380
    if-nez p2, :cond_0

    #@17
    .line 381
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 382
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 383
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 384
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@2b
    .line 385
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@30
    .line 386
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@35
    .line 375
    :cond_0
    return-void
.end method
