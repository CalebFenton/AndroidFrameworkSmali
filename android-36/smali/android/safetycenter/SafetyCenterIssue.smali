.class public final Landroid/safetycenter/SafetyCenterIssue;
.super Ljava/lang/Object;
.source "SafetyCenterIssue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/SafetyCenterIssue$Action;,
        Landroid/safetycenter/SafetyCenterIssue$Builder;,
        Landroid/safetycenter/SafetyCenterIssue$IssueSeverityLevel;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetyCenterIssue;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ISSUE_SEVERITY_LEVEL_CRITICAL_WARNING:I = 0x8fc

.field public static final whitelist ISSUE_SEVERITY_LEVEL_OK:I = 0x834

.field public static final whitelist ISSUE_SEVERITY_LEVEL_RECOMMENDATION:I = 0x898


# instance fields
.field private final blacklist mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterIssue$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAttributionTitle:Ljava/lang/CharSequence;

.field private final blacklist mDismissible:Z

.field private final blacklist mGroupId:Ljava/lang/String;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mSeverityLevel:I

.field private final blacklist mShouldConfirmDismissal:Z

.field private final blacklist mSubtitle:Ljava/lang/CharSequence;

.field private final blacklist mSummary:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActions(Landroid/safetycenter/SafetyCenterIssue;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterIssue;->mActions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAttributionTitle(Landroid/safetycenter/SafetyCenterIssue;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDismissible(Landroid/safetycenter/SafetyCenterIssue;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/safetycenter/SafetyCenterIssue;->mDismissible:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupId(Landroid/safetycenter/SafetyCenterIssue;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterIssue;->mGroupId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/safetycenter/SafetyCenterIssue;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterIssue;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeverityLevel(Landroid/safetycenter/SafetyCenterIssue;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/SafetyCenterIssue;->mSeverityLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldConfirmDismissal(Landroid/safetycenter/SafetyCenterIssue;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/safetycenter/SafetyCenterIssue;->mShouldConfirmDismissal:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtitle(Landroid/safetycenter/SafetyCenterIssue;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterIssue;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSummary(Landroid/safetycenter/SafetyCenterIssue;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterIssue;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/safetycenter/SafetyCenterIssue;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterIssue;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateIssueSeverityLevel(I)I
    .registers 1

    invoke-static {p0}, Landroid/safetycenter/SafetyCenterIssue;->validateIssueSeverityLevel(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 90
    new-instance v0, Landroid/safetycenter/SafetyCenterIssue$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetyCenterIssue$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetyCenterIssue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLjava/util/List;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "subtitle"    # Ljava/lang/CharSequence;
    .param p4, "summary"    # Ljava/lang/CharSequence;
    .param p5, "severityLevel"    # I
    .param p6, "isDismissible"    # Z
    .param p7, "shouldConfirmDismissal"    # Z
    .param p9, "attributionTitle"    # Ljava/lang/CharSequence;
    .param p10, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "IZZ",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterIssue$Action;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 140
    .local p8, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterIssue$Action;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterIssue;->mId:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Landroid/safetycenter/SafetyCenterIssue;->mTitle:Ljava/lang/CharSequence;

    .line 143
    iput-object p3, p0, Landroid/safetycenter/SafetyCenterIssue;->mSubtitle:Ljava/lang/CharSequence;

    .line 144
    iput-object p4, p0, Landroid/safetycenter/SafetyCenterIssue;->mSummary:Ljava/lang/CharSequence;

    .line 145
    iput p5, p0, Landroid/safetycenter/SafetyCenterIssue;->mSeverityLevel:I

    .line 146
    iput-boolean p6, p0, Landroid/safetycenter/SafetyCenterIssue;->mDismissible:Z

    .line 147
    iput-boolean p7, p0, Landroid/safetycenter/SafetyCenterIssue;->mShouldConfirmDismissal:Z

    .line 148
    iput-object p8, p0, Landroid/safetycenter/SafetyCenterIssue;->mActions:Ljava/util/List;

    .line 149
    iput-object p9, p0, Landroid/safetycenter/SafetyCenterIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    .line 150
    iput-object p10, p0, Landroid/safetycenter/SafetyCenterIssue;->mGroupId:Ljava/lang/String;

    .line 151
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLjava/util/List;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/safetycenter/SafetyCenterIssue-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/safetycenter/SafetyCenterIssue;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLjava/util/List;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist validateIssueSeverityLevel(I)I
    .registers 4
    .param p0, "value"    # I

    .line 919
    sparse-switch p0, :sswitch_data_1e

    .line 926
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected IssueSeverityLevel for SafetyCenterIssue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :sswitch_1c
    return p0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x834 -> :sswitch_1c
        0x898 -> :sswitch_1c
        0x8fc -> :sswitch_1c
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 247
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 248
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetyCenterIssue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 249
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetyCenterIssue;

    .line 250
    .local v1, "that":Landroid/safetycenter/SafetyCenterIssue;
    iget v3, p0, Landroid/safetycenter/SafetyCenterIssue;->mSeverityLevel:I

    iget v4, v1, Landroid/safetycenter/SafetyCenterIssue;->mSeverityLevel:I

    if-ne v3, v4, :cond_66

    iget-boolean v3, p0, Landroid/safetycenter/SafetyCenterIssue;->mDismissible:Z

    iget-boolean v4, v1, Landroid/safetycenter/SafetyCenterIssue;->mDismissible:Z

    if-ne v3, v4, :cond_66

    iget-boolean v3, p0, Landroid/safetycenter/SafetyCenterIssue;->mShouldConfirmDismissal:Z

    iget-boolean v4, v1, Landroid/safetycenter/SafetyCenterIssue;->mShouldConfirmDismissal:Z

    if-ne v3, v4, :cond_66

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterIssue;->mId:Ljava/lang/String;

    .line 253
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterIssue;->mTitle:Ljava/lang/CharSequence;

    .line 254
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterIssue;->mSubtitle:Ljava/lang/CharSequence;

    .line 255
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue;->mSummary:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterIssue;->mSummary:Ljava/lang/CharSequence;

    .line 256
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue;->mActions:Ljava/util/List;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterIssue;->mActions:Ljava/util/List;

    .line 257
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    .line 258
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue;->mGroupId:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterIssue;->mGroupId:Ljava/lang/String;

    .line 259
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    goto :goto_67

    :cond_66
    move v0, v2

    .line 250
    :goto_67
    return v0
.end method

.method public whitelist getActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterIssue$Action;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAttributionTitle()Ljava/lang/CharSequence;
    .registers 3

    .line 191
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 195
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    return-object v0

    .line 192
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getGroupId()Ljava/lang/String;
    .registers 3

    .line 238
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 242
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mGroupId:Ljava/lang/String;

    return-object v0

    .line 239
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSeverityLevel()I
    .registers 2

    .line 201
    iget v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mSeverityLevel:I

    return v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 264
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mId:Ljava/lang/String;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterIssue;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue;->mSummary:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/safetycenter/SafetyCenterIssue;->mSeverityLevel:I

    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v5, p0, Landroid/safetycenter/SafetyCenterIssue;->mDismissible:Z

    .line 270
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Landroid/safetycenter/SafetyCenterIssue;->mShouldConfirmDismissal:Z

    .line 271
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Landroid/safetycenter/SafetyCenterIssue;->mActions:Ljava/util/List;

    iget-object v8, p0, Landroid/safetycenter/SafetyCenterIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/safetycenter/SafetyCenterIssue;->mGroupId:Ljava/lang/String;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 264
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isDismissible()Z
    .registers 2

    .line 206
    iget-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mDismissible:Z

    return v0
.end method

.method public whitelist shouldConfirmDismissal()Z
    .registers 2

    .line 211
    iget-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mShouldConfirmDismissal:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetyCenterIssue{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSeverityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/SafetyCenterIssue;->mSeverityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDismissible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/safetycenter/SafetyCenterIssue;->mDismissible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfirmDismissal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/safetycenter/SafetyCenterIssue;->mShouldConfirmDismissal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue;->mActions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAttributionTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 310
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 312
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 313
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 314
    iget v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mSeverityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mDismissible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 316
    iget-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mShouldConfirmDismissal:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 317
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 318
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 319
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 320
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue;->mGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    :cond_38
    return-void
.end method
