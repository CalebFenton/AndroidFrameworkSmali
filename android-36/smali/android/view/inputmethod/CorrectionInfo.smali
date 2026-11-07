.class public final Landroid/view/inputmethod/CorrectionInfo;
.super Ljava/lang/Object;
.source "CorrectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/CorrectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mNewText:Ljava/lang/CharSequence;

.field private final greylist-max-o mOffset:I

.field private final greylist-max-o mOldText:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Landroid/view/inputmethod/CorrectionInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/CorrectionInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/CorrectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "offset"    # I
    .param p2, "oldText"    # Ljava/lang/CharSequence;
    .param p3, "newText"    # Ljava/lang/CharSequence;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/view/inputmethod/CorrectionInfo;->mOffset:I

    .line 39
    iput-object p2, p0, Landroid/view/inputmethod/CorrectionInfo;->mOldText:Ljava/lang/CharSequence;

    .line 40
    iput-object p3, p0, Landroid/view/inputmethod/CorrectionInfo;->mNewText:Ljava/lang/CharSequence;

    .line 41
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CorrectionInfo;->mOffset:I

    .line 45
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/inputmethod/CorrectionInfo;->mOldText:Ljava/lang/CharSequence;

    .line 46
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/inputmethod/CorrectionInfo;->mNewText:Ljava/lang/CharSequence;

    .line 47
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/CorrectionInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/CorrectionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNewText()Ljava/lang/CharSequence;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/view/inputmethod/CorrectionInfo;->mNewText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getOffset()I
    .registers 2

    .line 54
    iget v0, p0, Landroid/view/inputmethod/CorrectionInfo;->mOffset:I

    return v0
.end method

.method public whitelist getOldText()Ljava/lang/CharSequence;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/view/inputmethod/CorrectionInfo;->mOldText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CorrectionInfo{#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CorrectionInfo;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CorrectionInfo;->mOldText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" -> \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CorrectionInfo;->mNewText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 83
    iget v0, p0, Landroid/view/inputmethod/CorrectionInfo;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Landroid/view/inputmethod/CorrectionInfo;->mOldText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 85
    iget-object v0, p0, Landroid/view/inputmethod/CorrectionInfo;->mNewText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 86
    return-void
.end method
