.class public final Landroid/safetycenter/SafetySourceStatus;
.super Ljava/lang/Object;
.source "SafetySourceStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/SafetySourceStatus$IconAction;,
        Landroid/safetycenter/SafetySourceStatus$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetySourceStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEnabled:Z

.field private final blacklist mIconAction:Landroid/safetycenter/SafetySourceStatus$IconAction;

.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private final blacklist mSeverityLevel:I

.field private final blacklist mSummary:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnabled(Landroid/safetycenter/SafetySourceStatus;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/safetycenter/SafetySourceStatus;->mEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconAction(Landroid/safetycenter/SafetySourceStatus;)Landroid/safetycenter/SafetySourceStatus$IconAction;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceStatus;->mIconAction:Landroid/safetycenter/SafetySourceStatus$IconAction;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingIntent(Landroid/safetycenter/SafetySourceStatus;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceStatus;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeverityLevel(Landroid/safetycenter/SafetySourceStatus;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/SafetySourceStatus;->mSeverityLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSummary(Landroid/safetycenter/SafetySourceStatus;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceStatus;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/safetycenter/SafetySourceStatus;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceStatus;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateSeverityLevel(I)I
    .registers 1

    invoke-static {p0}, Landroid/safetycenter/SafetySourceStatus;->validateSeverityLevel(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Landroid/safetycenter/SafetySourceStatus$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetySourceStatus$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetySourceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;Landroid/safetycenter/SafetySourceStatus$IconAction;Z)V
    .registers 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "summary"    # Ljava/lang/CharSequence;
    .param p3, "severityLevel"    # I
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "iconAction"    # Landroid/safetycenter/SafetySourceStatus$IconAction;
    .param p6, "enabled"    # Z

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/safetycenter/SafetySourceStatus;->mTitle:Ljava/lang/CharSequence;

    .line 89
    iput-object p2, p0, Landroid/safetycenter/SafetySourceStatus;->mSummary:Ljava/lang/CharSequence;

    .line 90
    iput p3, p0, Landroid/safetycenter/SafetySourceStatus;->mSeverityLevel:I

    .line 91
    iput-object p4, p0, Landroid/safetycenter/SafetySourceStatus;->mPendingIntent:Landroid/app/PendingIntent;

    .line 92
    iput-object p5, p0, Landroid/safetycenter/SafetySourceStatus;->mIconAction:Landroid/safetycenter/SafetySourceStatus$IconAction;

    .line 93
    iput-boolean p6, p0, Landroid/safetycenter/SafetySourceStatus;->mEnabled:Z

    .line 94
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;Landroid/safetycenter/SafetySourceStatus$IconAction;ZLandroid/safetycenter/SafetySourceStatus-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/safetycenter/SafetySourceStatus;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;Landroid/safetycenter/SafetySourceStatus$IconAction;Z)V

    return-void
.end method

.method private static blacklist validateSeverityLevel(I)I
    .registers 4
    .param p0, "value"    # I

    .line 418
    sparse-switch p0, :sswitch_data_1e

    .line 426
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SeverityLevel for SafetySourceStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :sswitch_1c
    return p0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x64 -> :sswitch_1c
        0xc8 -> :sswitch_1c
        0x12c -> :sswitch_1c
        0x190 -> :sswitch_1c
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 169
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 170
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetySourceStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 171
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetySourceStatus;

    .line 172
    .local v1, "that":Landroid/safetycenter/SafetySourceStatus;
    iget v3, p0, Landroid/safetycenter/SafetySourceStatus;->mSeverityLevel:I

    iget v4, v1, Landroid/safetycenter/SafetySourceStatus;->mSeverityLevel:I

    if-ne v3, v4, :cond_42

    iget-boolean v3, p0, Landroid/safetycenter/SafetySourceStatus;->mEnabled:Z

    iget-boolean v4, v1, Landroid/safetycenter/SafetySourceStatus;->mEnabled:Z

    if-ne v3, v4, :cond_42

    iget-object v3, p0, Landroid/safetycenter/SafetySourceStatus;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceStatus;->mTitle:Ljava/lang/CharSequence;

    .line 174
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/safetycenter/SafetySourceStatus;->mSummary:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceStatus;->mSummary:Ljava/lang/CharSequence;

    .line 175
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/safetycenter/SafetySourceStatus;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceStatus;->mPendingIntent:Landroid/app/PendingIntent;

    .line 176
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/safetycenter/SafetySourceStatus;->mIconAction:Landroid/safetycenter/SafetySourceStatus$IconAction;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceStatus;->mIconAction:Landroid/safetycenter/SafetySourceStatus$IconAction;

    .line 177
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_43

    :cond_42
    move v0, v2

    .line 172
    :goto_43
    return v0
.end method

.method public whitelist getIconAction()Landroid/safetycenter/SafetySourceStatus$IconAction;
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/safetycenter/SafetySourceStatus;->mIconAction:Landroid/safetycenter/SafetySourceStatus$IconAction;

    return-object v0
.end method

.method public whitelist getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/safetycenter/SafetySourceStatus;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getSeverityLevel()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/safetycenter/SafetySourceStatus;->mSeverityLevel:I

    return v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/safetycenter/SafetySourceStatus;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/safetycenter/SafetySourceStatus;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 182
    iget-object v0, p0, Landroid/safetycenter/SafetySourceStatus;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/safetycenter/SafetySourceStatus;->mSummary:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/safetycenter/SafetySourceStatus;->mSeverityLevel:I

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/safetycenter/SafetySourceStatus;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/safetycenter/SafetySourceStatus;->mIconAction:Landroid/safetycenter/SafetySourceStatus$IconAction;

    iget-boolean v5, p0, Landroid/safetycenter/SafetySourceStatus;->mEnabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 182
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Landroid/safetycenter/SafetySourceStatus;->mEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetySourceStatus{mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceStatus;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceStatus;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSeverityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/SafetySourceStatus;->mSeverityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceStatus;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIconAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceStatus;->mIconAction:Landroid/safetycenter/SafetySourceStatus$IconAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/safetycenter/SafetySourceStatus;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 159
    iget-object v0, p0, Landroid/safetycenter/SafetySourceStatus;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 160
    iget-object v0, p0, Landroid/safetycenter/SafetySourceStatus;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 161
    iget v0, p0, Landroid/safetycenter/SafetySourceStatus;->mSeverityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Landroid/safetycenter/SafetySourceStatus;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 163
    iget-object v0, p0, Landroid/safetycenter/SafetySourceStatus;->mIconAction:Landroid/safetycenter/SafetySourceStatus$IconAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 164
    iget-boolean v0, p0, Landroid/safetycenter/SafetySourceStatus;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 165
    return-void
.end method
