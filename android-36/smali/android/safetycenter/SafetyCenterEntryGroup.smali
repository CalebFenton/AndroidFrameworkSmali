.class public final Landroid/safetycenter/SafetyCenterEntryGroup;
.super Ljava/lang/Object;
.source "SafetyCenterEntryGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/SafetyCenterEntryGroup$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetyCenterEntryGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mSeverityLevel:I

.field private final blacklist mSeverityUnspecifiedIconType:I

.field private final blacklist mSummary:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEntries(Landroid/safetycenter/SafetyCenterEntryGroup;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mEntries:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/safetycenter/SafetyCenterEntryGroup;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeverityLevel(Landroid/safetycenter/SafetyCenterEntryGroup;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeverityUnspecifiedIconType(Landroid/safetycenter/SafetyCenterEntryGroup;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityUnspecifiedIconType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSummary(Landroid/safetycenter/SafetyCenterEntryGroup;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/safetycenter/SafetyCenterEntryGroup;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateEntrySeverityLevel(I)I
    .registers 1

    invoke-static {p0}, Landroid/safetycenter/SafetyCenterEntryGroup;->validateEntrySeverityLevel(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateSeverityUnspecifiedIconType(I)I
    .registers 1

    invoke-static {p0}, Landroid/safetycenter/SafetyCenterEntryGroup;->validateSeverityUnspecifiedIconType(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/safetycenter/SafetyCenterEntryGroup$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetyCenterEntryGroup$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetyCenterEntryGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/util/List;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "summary"    # Ljava/lang/CharSequence;
    .param p4, "severityLevel"    # I
    .param p5, "severityUnspecifiedIconType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "II",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterEntry;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p6, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mId:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mTitle:Ljava/lang/CharSequence;

    .line 84
    iput-object p3, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSummary:Ljava/lang/CharSequence;

    .line 85
    iput p4, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityLevel:I

    .line 86
    iput p5, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityUnspecifiedIconType:I

    .line 87
    iput-object p6, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mEntries:Ljava/util/List;

    .line 88
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/util/List;Landroid/safetycenter/SafetyCenterEntryGroup-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/safetycenter/SafetyCenterEntryGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/util/List;)V

    return-void
.end method

.method private static blacklist validateEntrySeverityLevel(I)I
    .registers 4
    .param p0, "value"    # I

    .line 287
    sparse-switch p0, :sswitch_data_1e

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected EntrySeverityLevel for SafetyCenterEntryGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :sswitch_1c
    return p0

    nop

    :sswitch_data_1e
    .sparse-switch
        0xbb8 -> :sswitch_1c
        0xc1c -> :sswitch_1c
        0xc80 -> :sswitch_1c
        0xce4 -> :sswitch_1c
        0xd48 -> :sswitch_1c
    .end sparse-switch
.end method

.method private static blacklist validateSeverityUnspecifiedIconType(I)I
    .registers 4
    .param p0, "value"    # I

    .line 302
    packed-switch p0, :pswitch_data_1e

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SeverityUnspecifiedIconType for SafetyCenterEntryGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :pswitch_1c
    return p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 130
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 131
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetyCenterEntryGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 132
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetyCenterEntryGroup;

    .line 133
    .local v1, "that":Landroid/safetycenter/SafetyCenterEntryGroup;
    iget v3, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityLevel:I

    iget v4, v1, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityLevel:I

    if-ne v3, v4, :cond_42

    iget v3, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityUnspecifiedIconType:I

    iget v4, v1, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityUnspecifiedIconType:I

    if-ne v3, v4, :cond_42

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterEntryGroup;->mId:Ljava/lang/String;

    .line 135
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterEntryGroup;->mTitle:Ljava/lang/CharSequence;

    .line 136
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSummary:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterEntryGroup;->mSummary:Ljava/lang/CharSequence;

    .line 137
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mEntries:Ljava/util/List;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterEntryGroup;->mEntries:Ljava/util/List;

    .line 138
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_43

    :cond_42
    move v0, v2

    .line 133
    :goto_43
    return v0
.end method

.method public whitelist getEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterEntry;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mEntries:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSeverityLevel()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityLevel:I

    return v0
.end method

.method public whitelist getSeverityUnspecifiedIconType()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityUnspecifiedIconType:I

    return v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 143
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mId:Ljava/lang/String;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSummary:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityLevel:I

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityUnspecifiedIconType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mEntries:Ljava/util/List;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 143
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetyCenterEntryGroup{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSeverityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSeverityUnspecifiedIconType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityUnspecifiedIconType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 172
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 174
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 175
    iget v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mSeverityUnspecifiedIconType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup;->mEntries:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 178
    return-void
.end method
