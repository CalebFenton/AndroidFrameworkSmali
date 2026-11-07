.class public final Landroid/safetycenter/SafetyCenterStatus;
.super Ljava/lang/Object;
.source "SafetyCenterStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/SafetyCenterStatus$Builder;,
        Landroid/safetycenter/SafetyCenterStatus$RefreshStatus;,
        Landroid/safetycenter/SafetyCenterStatus$OverallSeverityLevel;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetyCenterStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist OVERALL_SEVERITY_LEVEL_CRITICAL_WARNING:I = 0x514

.field public static final whitelist OVERALL_SEVERITY_LEVEL_OK:I = 0x44c

.field public static final whitelist OVERALL_SEVERITY_LEVEL_RECOMMENDATION:I = 0x4b0

.field public static final whitelist OVERALL_SEVERITY_LEVEL_UNKNOWN:I = 0x3e8

.field public static final whitelist REFRESH_STATUS_DATA_FETCH_IN_PROGRESS:I = 0x2774

.field public static final whitelist REFRESH_STATUS_FULL_RESCAN_IN_PROGRESS:I = 0x27d8

.field public static final whitelist REFRESH_STATUS_NONE:I


# instance fields
.field private final blacklist mRefreshStatus:I

.field private final blacklist mSeverityLevel:I

.field private final blacklist mSummary:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRefreshStatus(Landroid/safetycenter/SafetyCenterStatus;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/SafetyCenterStatus;->mRefreshStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeverityLevel(Landroid/safetycenter/SafetyCenterStatus;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/SafetyCenterStatus;->mSeverityLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSummary(Landroid/safetycenter/SafetyCenterStatus;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterStatus;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/safetycenter/SafetyCenterStatus;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterStatus;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateOverallSeverityLevel(I)I
    .registers 1

    invoke-static {p0}, Landroid/safetycenter/SafetyCenterStatus;->validateOverallSeverityLevel(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateRefreshStatus(I)I
    .registers 1

    invoke-static {p0}, Landroid/safetycenter/SafetyCenterStatus;->validateRefreshStatus(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 120
    new-instance v0, Landroid/safetycenter/SafetyCenterStatus$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetyCenterStatus$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetyCenterStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "summary"    # Ljava/lang/CharSequence;
    .param p3, "severityLevel"    # I
    .param p4, "refreshStatus"    # I

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterStatus;->mTitle:Ljava/lang/CharSequence;

    .line 149
    iput-object p2, p0, Landroid/safetycenter/SafetyCenterStatus;->mSummary:Ljava/lang/CharSequence;

    .line 150
    iput p3, p0, Landroid/safetycenter/SafetyCenterStatus;->mSeverityLevel:I

    .line 151
    iput p4, p0, Landroid/safetycenter/SafetyCenterStatus;->mRefreshStatus:I

    .line 152
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/safetycenter/SafetyCenterStatus-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/safetycenter/SafetyCenterStatus;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private static blacklist validateOverallSeverityLevel(I)I
    .registers 4
    .param p0, "value"    # I

    .line 290
    sparse-switch p0, :sswitch_data_1e

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected OverallSeverityLevel for SafetyCenterStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :sswitch_1c
    return p0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x3e8 -> :sswitch_1c
        0x44c -> :sswitch_1c
        0x4b0 -> :sswitch_1c
        0x514 -> :sswitch_1c
    .end sparse-switch
.end method

.method private static blacklist validateRefreshStatus(I)I
    .registers 4
    .param p0, "value"    # I

    .line 304
    sparse-switch p0, :sswitch_data_1e

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected RefreshStatus for SafetyCenterStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :sswitch_1c
    return p0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_1c
        0x2774 -> :sswitch_1c
        0x27d8 -> :sswitch_1c
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 180
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 181
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetyCenterStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 182
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetyCenterStatus;

    .line 183
    .local v1, "that":Landroid/safetycenter/SafetyCenterStatus;
    iget v3, p0, Landroid/safetycenter/SafetyCenterStatus;->mSeverityLevel:I

    iget v4, v1, Landroid/safetycenter/SafetyCenterStatus;->mSeverityLevel:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/safetycenter/SafetyCenterStatus;->mRefreshStatus:I

    iget v4, v1, Landroid/safetycenter/SafetyCenterStatus;->mRefreshStatus:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterStatus;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterStatus;->mTitle:Ljava/lang/CharSequence;

    .line 185
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterStatus;->mSummary:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterStatus;->mSummary:Ljava/lang/CharSequence;

    .line 186
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 183
    :goto_2f
    return v0
.end method

.method public whitelist getRefreshStatus()I
    .registers 2

    .line 175
    iget v0, p0, Landroid/safetycenter/SafetyCenterStatus;->mRefreshStatus:I

    return v0
.end method

.method public whitelist getSeverityLevel()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/safetycenter/SafetyCenterStatus;->mSeverityLevel:I

    return v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStatus;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStatus;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 191
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStatus;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterStatus;->mSummary:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/safetycenter/SafetyCenterStatus;->mSeverityLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/safetycenter/SafetyCenterStatus;->mRefreshStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetyCenterStatus{mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterStatus;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterStatus;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSeverityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/SafetyCenterStatus;->mSeverityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRefreshStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/SafetyCenterStatus;->mRefreshStatus:I

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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 215
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStatus;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 216
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStatus;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 217
    iget v0, p0, Landroid/safetycenter/SafetyCenterStatus;->mSeverityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Landroid/safetycenter/SafetyCenterStatus;->mRefreshStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return-void
.end method
