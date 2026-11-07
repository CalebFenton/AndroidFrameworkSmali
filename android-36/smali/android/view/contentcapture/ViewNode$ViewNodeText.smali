.class final Landroid/view/contentcapture/ViewNode$ViewNodeText;
.super Ljava/lang/Object;
.source "ViewNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ViewNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewNodeText"
.end annotation


# instance fields
.field blacklist mHint:Ljava/lang/String;

.field blacklist mLineBaselines:[I

.field blacklist mLineCharOffsets:[I

.field blacklist mText:Ljava/lang/CharSequence;

.field blacklist mTextBackgroundColor:I

.field blacklist mTextColor:I

.field blacklist mTextSelectionEnd:I

.field blacklist mTextSelectionStart:I

.field blacklist mTextSize:F

.field blacklist mTextStyle:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextColor:I

    .line 1028
    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    .line 1036
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;Z)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "simple"    # Z

    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextColor:I

    .line 1028
    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    .line 1045
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 1046
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSize:F

    .line 1047
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextStyle:I

    .line 1048
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextColor:I

    .line 1049
    if-nez p2, :cond_4a

    .line 1050
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    .line 1051
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    .line 1052
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    .line 1053
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineCharOffsets:[I

    .line 1054
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineBaselines:[I

    .line 1055
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mHint:Ljava/lang/String;

    .line 1057
    :cond_4a
    return-void
.end method


# virtual methods
.method blacklist isSimple()Z
    .registers 3

    .line 1039
    iget v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    iget v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    if-nez v0, :cond_1a

    iget v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineCharOffsets:[I

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineBaselines:[I

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mHint:Ljava/lang/String;

    if-nez v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;Z)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "simple"    # Z

    .line 1060
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1061
    .local v0, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1062
    iget v1, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSize:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1063
    iget v1, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextStyle:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    iget v1, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextColor:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1065
    if-nez p2, :cond_55

    .line 1066
    if-eqz v0, :cond_28

    .line 1067
    iget v1, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2a

    .line 1068
    :cond_28
    iget v1, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    :goto_2a
    nop

    .line 1069
    .local v1, "selectionStart":I
    if-eqz v0, :cond_38

    .line 1070
    iget v2, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_3a

    .line 1071
    :cond_38
    iget v2, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    :goto_3a
    nop

    .line 1072
    .local v2, "selectionEnd":I
    iget v3, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1074
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    iget-object v3, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineCharOffsets:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1076
    iget-object v3, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineBaselines:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1077
    iget-object v3, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1079
    .end local v1    # "selectionStart":I
    .end local v2    # "selectionEnd":I
    :cond_55
    return-void
.end method
