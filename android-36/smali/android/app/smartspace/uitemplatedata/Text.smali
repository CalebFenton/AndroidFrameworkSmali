.class public final Landroid/app/smartspace/uitemplatedata/Text;
.super Ljava/lang/Object;
.source "Text.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/uitemplatedata/Text$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/uitemplatedata/Text;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMaxLines:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mTruncateAtType:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/app/smartspace/uitemplatedata/Text$1;

    invoke-direct {v0}, Landroid/app/smartspace/uitemplatedata/Text$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/uitemplatedata/Text;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    .line 48
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextUtils$TruncateAt;I)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "truncateAtType"    # Landroid/text/TextUtils$TruncateAt;
    .param p3, "maxLines"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    .line 52
    iput-object p2, p0, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    .line 53
    iput p3, p0, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextUtils$TruncateAt;ILandroid/app/smartspace/uitemplatedata/Text-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/smartspace/uitemplatedata/Text;-><init>(Ljava/lang/CharSequence;Landroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 94
    :cond_4
    instance-of v1, p1, Landroid/app/smartspace/uitemplatedata/Text;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 95
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/smartspace/uitemplatedata/Text;

    .line 96
    .local v1, "that":Landroid/app/smartspace/uitemplatedata/Text;
    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v4, :cond_24

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, p0, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    iget v4, v1, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    if-ne v3, v4, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    return v0
.end method

.method public whitelist getMaxLines()I
    .registers 2

    .line 70
    iget v0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTruncateAtType()Landroid/text/TextUtils$TruncateAt;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 102
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    iget v2, p0, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Text{mText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTruncateAtType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxLines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 107
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 108
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0}, Landroid/text/TextUtils$TruncateAt;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return-void
.end method
