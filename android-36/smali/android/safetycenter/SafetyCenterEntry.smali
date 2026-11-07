.class public final Landroid/safetycenter/SafetyCenterEntry;
.super Ljava/lang/Object;
.source "SafetyCenterEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/SafetyCenterEntry$IconAction;,
        Landroid/safetycenter/SafetyCenterEntry$Builder;,
        Landroid/safetycenter/SafetyCenterEntry$SeverityUnspecifiedIconType;,
        Landroid/safetycenter/SafetyCenterEntry$EntrySeverityLevel;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetyCenterEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ENTRY_SEVERITY_LEVEL_CRITICAL_WARNING:I = 0xd48

.field public static final whitelist ENTRY_SEVERITY_LEVEL_OK:I = 0xc80

.field public static final whitelist ENTRY_SEVERITY_LEVEL_RECOMMENDATION:I = 0xce4

.field public static final whitelist ENTRY_SEVERITY_LEVEL_UNKNOWN:I = 0xbb8

.field public static final whitelist ENTRY_SEVERITY_LEVEL_UNSPECIFIED:I = 0xc1c

.field public static final whitelist SEVERITY_UNSPECIFIED_ICON_TYPE_NO_ICON:I = 0x0

.field public static final whitelist SEVERITY_UNSPECIFIED_ICON_TYPE_NO_RECOMMENDATION:I = 0x2

.field public static final whitelist SEVERITY_UNSPECIFIED_ICON_TYPE_PRIVACY:I = 0x1


# instance fields
.field private final blacklist mEnabled:Z

.field private final blacklist mIconAction:Landroid/safetycenter/SafetyCenterEntry$IconAction;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private final blacklist mSeverityLevel:I

.field private final blacklist mSeverityUnspecifiedIconType:I

.field private final blacklist mSummary:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnabled(Landroid/safetycenter/SafetyCenterEntry;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/safetycenter/SafetyCenterEntry;->mEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconAction(Landroid/safetycenter/SafetyCenterEntry;)Landroid/safetycenter/SafetyCenterEntry$IconAction;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterEntry;->mIconAction:Landroid/safetycenter/SafetyCenterEntry$IconAction;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/safetycenter/SafetyCenterEntry;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterEntry;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingIntent(Landroid/safetycenter/SafetyCenterEntry;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterEntry;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeverityLevel(Landroid/safetycenter/SafetyCenterEntry;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/SafetyCenterEntry;->mSeverityLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeverityUnspecifiedIconType(Landroid/safetycenter/SafetyCenterEntry;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/SafetyCenterEntry;->mSeverityUnspecifiedIconType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSummary(Landroid/safetycenter/SafetyCenterEntry;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterEntry;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/safetycenter/SafetyCenterEntry;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterEntry;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateEntrySeverityLevel(I)I
    .registers 1

    invoke-static {p0}, Landroid/safetycenter/SafetyCenterEntry;->validateEntrySeverityLevel(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateSeverityUnspecifiedIconType(I)I
    .registers 1

    invoke-static {p0}, Landroid/safetycenter/SafetyCenterEntry;->validateSeverityUnspecifiedIconType(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Landroid/safetycenter/SafetyCenterEntry$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetyCenterEntry$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetyCenterEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLandroid/app/PendingIntent;Landroid/safetycenter/SafetyCenterEntry$IconAction;)V
    .registers 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "summary"    # Ljava/lang/CharSequence;
    .param p4, "severityLevel"    # I
    .param p5, "severityUnspecifiedIconType"    # I
    .param p6, "enabled"    # Z
    .param p7, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p8, "iconAction"    # Landroid/safetycenter/SafetyCenterEntry$IconAction;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterEntry;->mId:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Landroid/safetycenter/SafetyCenterEntry;->mTitle:Ljava/lang/CharSequence;

    .line 174
    iput-object p3, p0, Landroid/safetycenter/SafetyCenterEntry;->mSummary:Ljava/lang/CharSequence;

    .line 175
    iput p4, p0, Landroid/safetycenter/SafetyCenterEntry;->mSeverityLevel:I

    .line 176
    iput p5, p0, Landroid/safetycenter/SafetyCenterEntry;->mSeverityUnspecifiedIconType:I

    .line 177
    iput-boolean p6, p0, Landroid/safetycenter/SafetyCenterEntry;->mEnabled:Z

    .line 178
    iput-object p7, p0, Landroid/safetycenter/SafetyCenterEntry;->mPendingIntent:Landroid/app/PendingIntent;

    .line 179
    iput-object p8, p0, Landroid/safetycenter/SafetyCenterEntry;->mIconAction:Landroid/safetycenter/SafetyCenterEntry$IconAction;

    .line 180
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLandroid/app/PendingIntent;Landroid/safetycenter/SafetyCenterEntry$IconAction;Landroid/safetycenter/SafetyCenterEntry-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/safetycenter/SafetyCenterEntry;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLandroid/app/PendingIntent;Landroid/safetycenter/SafetyCenterEntry$IconAction;)V

    return-void
.end method

.method private static blacklist validateEntrySeverityLevel(I)I
    .registers 4
    .param p0, "value"    # I

    .line 536
    sparse-switch p0, :sswitch_data_1e

    .line 545
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected EntrySeverityLevel for SafetyCenterEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
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

    .line 551
    packed-switch p0, :pswitch_data_1e

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SeverityUnspecifiedIconType for SafetyCenterEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
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

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 239
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 240
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetyCenterEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 241
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetyCenterEntry;

    .line 242
    .local v1, "that":Landroid/safetycenter/SafetyCenterEntry;
    iget v3, p0, Landroid/safetycenter/SafetyCenterEntry;->mSeverityLevel:I

    iget v4, v1, Landroid/safetycenter/SafetyCenterEntry;->mSeverityLevel:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/safetycenter/SafetyCenterEntry;->mSeverityUnspecifiedIconType:I

    iget v4, v1, Landroid/safetycenter/SafetyCenterEntry;->mSeverityUnspecifiedIconType:I

    if-ne v3, v4, :cond_52

    iget-boolean v3, p0, Landroid/safetycenter/SafetyCenterEntry;->mEnabled:Z

    iget-boolean v4, v1, Landroid/safetycenter/SafetyCenterEntry;->mEnabled:Z

    if-ne v3, v4, :cond_52

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterEntry;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterEntry;->mId:Ljava/lang/String;

    .line 245
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterEntry;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterEntry;->mTitle:Ljava/lang/CharSequence;

    .line 246
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterEntry;->mSummary:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterEntry;->mSummary:Ljava/lang/CharSequence;

    .line 247
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterEntry;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterEntry;->mPendingIntent:Landroid/app/PendingIntent;

    .line 248
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterEntry;->mIconAction:Landroid/safetycenter/SafetyCenterEntry$IconAction;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterEntry;->mIconAction:Landroid/safetycenter/SafetyCenterEntry$IconAction;

    .line 249
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    goto :goto_53

    :cond_52
    move v0, v2

    .line 242
    :goto_53
    return v0
.end method

.method public whitelist getIconAction()Landroid/safetycenter/SafetyCenterEntry$IconAction;
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mIconAction:Landroid/safetycenter/SafetyCenterEntry$IconAction;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getSeverityLevel()I
    .registers 2

    .line 206
    iget v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mSeverityLevel:I

    return v0
.end method

.method public whitelist getSeverityUnspecifiedIconType()I
    .registers 2

    .line 212
    iget v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mSeverityUnspecifiedIconType:I

    return v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 254
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mId:Ljava/lang/String;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntry;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterEntry;->mSummary:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/safetycenter/SafetyCenterEntry;->mSeverityLevel:I

    .line 258
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/safetycenter/SafetyCenterEntry;->mSeverityUnspecifiedIconType:I

    .line 259
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v5, p0, Landroid/safetycenter/SafetyCenterEntry;->mEnabled:Z

    .line 260
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Landroid/safetycenter/SafetyCenterEntry;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Landroid/safetycenter/SafetyCenterEntry;->mIconAction:Landroid/safetycenter/SafetyCenterEntry$IconAction;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 254
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetyCenterEntry{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntry;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntry;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntry;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSeverityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/SafetyCenterEntry;->mSeverityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSeverityUnspecifiedIconType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/SafetyCenterEntry;->mSeverityUnspecifiedIconType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/safetycenter/SafetyCenterEntry;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntry;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIconAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntry;->mIconAction:Landroid/safetycenter/SafetyCenterEntry$IconAction;

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

    .line 294
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 296
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 297
    iget v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mSeverityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mSeverityUnspecifiedIconType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-boolean v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 300
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 301
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntry;->mIconAction:Landroid/safetycenter/SafetyCenterEntry$IconAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 302
    return-void
.end method
