.class public final Landroid/view/inputmethod/CompletionInfo;
.super Ljava/lang/Object;
.source "CompletionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/CompletionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mId:J

.field private final greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private final greylist-max-o mPosition:I

.field private final greylist-max-o mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 156
    new-instance v0, Landroid/view/inputmethod/CompletionInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/CompletionInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JILjava/lang/CharSequence;)V
    .registers 6
    .param p1, "id"    # J
    .param p3, "index"    # I
    .param p4, "text"    # Ljava/lang/CharSequence;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    .line 68
    iput p3, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    .line 69
    iput-object p4, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 71
    return-void
.end method

.method public constructor whitelist <init>(JILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "id"    # J
    .param p3, "index"    # I
    .param p4, "text"    # Ljava/lang/CharSequence;
    .param p5, "label"    # Ljava/lang/CharSequence;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-wide p1, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    .line 89
    iput p3, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    .line 90
    iput-object p4, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    .line 91
    iput-object p5, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    .line 97
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    .line 98
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 99
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/CompletionInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/CompletionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getId()J
    .registers 3

    .line 106
    iget-wide v0, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    return-wide v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPosition()I
    .registers 2

    .line 114
    iget v0, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompletionInfo{#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    iget-wide v0, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    iget v0, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 150
    iget-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 151
    return-void
.end method
