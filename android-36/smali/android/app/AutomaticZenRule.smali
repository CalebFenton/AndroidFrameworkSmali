.class public final Landroid/app/AutomaticZenRule;
.super Ljava/lang/Object;
.source "AutomaticZenRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AutomaticZenRule$AzrWithId;,
        Landroid/app/AutomaticZenRule$Builder;,
        Landroid/app/AutomaticZenRule$ModifiableField;,
        Landroid/app/AutomaticZenRule$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DISABLED:I = 0x0

.field private static final blacklist ENABLED:I = 0x1

.field public static final blacklist FIELD_ICON:I = 0x4

.field public static final blacklist FIELD_INTERRUPTION_FILTER:I = 0x2

.field public static final blacklist FIELD_NAME:I = 0x1

.field public static final blacklist MAX_DESC_LENGTH:I = 0x96

.field public static final blacklist MAX_STRING_LENGTH:I = 0x1f4

.field public static final whitelist TYPE_BEDTIME:I = 0x3

.field public static final whitelist TYPE_DRIVING:I = 0x4

.field public static final whitelist TYPE_IMMERSIVE:I = 0x5

.field public static final whitelist TYPE_MANAGED:I = 0x7

.field public static final whitelist TYPE_OTHER:I = 0x0

.field public static final whitelist TYPE_SCHEDULE_CALENDAR:I = 0x2

.field public static final whitelist TYPE_SCHEDULE_TIME:I = 0x1

.field public static final whitelist TYPE_THEATER:I = 0x6

.field public static final whitelist TYPE_UNKNOWN:I = -0x1


# instance fields
.field private greylist-max-o conditionId:Landroid/net/Uri;

.field private blacklist configurationActivity:Landroid/content/ComponentName;

.field private greylist-max-o creationTime:J

.field private greylist-max-o enabled:Z

.field private greylist-max-o interruptionFilter:I

.field private blacklist mAllowManualInvocation:Z

.field private blacklist mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

.field private blacklist mIconResId:I

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mTriggerDescription:Ljava/lang/String;

.field private blacklist mType:I

.field private blacklist mZenPolicy:Landroid/service/notification/ZenPolicy;

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o owner:Landroid/content/ComponentName;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputcreationTime(Landroid/app/AutomaticZenRule;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowManualInvocation(Landroid/app/AutomaticZenRule;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceEffects(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenDeviceEffects;)V
    .registers 2

    iput-object p1, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIconResId(Landroid/app/AutomaticZenRule;I)V
    .registers 2

    iput p1, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTriggerDescription(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmType(Landroid/app/AutomaticZenRule;I)V
    .registers 2

    iput p1, p0, Landroid/app/AutomaticZenRule;->mType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckValidType(I)I
    .registers 1

    invoke-static {p0}, Landroid/app/AutomaticZenRule;->checkValidType(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 600
    new-instance v0, Landroid/app/AutomaticZenRule$1;

    invoke-direct {v0}, Landroid/app/AutomaticZenRule$1;-><init>()V

    sput-object v0, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AutomaticZenRule;->mType:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_22

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 233
    :cond_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    .line 234
    const-class v0, Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Landroid/app/AutomaticZenRule;->getTrimmedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 235
    const-class v0, Landroid/content/ComponentName;

    .line 236
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 235
    invoke-static {v0}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    .line 237
    const-class v0, Landroid/content/ComponentName;

    .line 238
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 237
    invoke-static {v0}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    .line 240
    const-class v0, Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenPolicy;

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    .line 242
    const-class v0, Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenDeviceEffects;

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule;->mType:I

    .line 247
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Landroid/content/ComponentName;
    .param p3, "configurationActivity"    # Landroid/content/ComponentName;
    .param p4, "conditionId"    # Landroid/net/Uri;
    .param p5, "policy"    # Landroid/service/notification/ZenPolicy;
    .param p6, "interruptionFilter"    # I
    .param p7, "enabled"    # Z

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AutomaticZenRule;->mType:I

    .line 206
    invoke-static {p1}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 207
    invoke-static {p2}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    .line 208
    invoke-static {p3}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 209
    invoke-static {p4}, Landroid/app/AutomaticZenRule;->getTrimmedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 210
    iput p6, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    .line 211
    iput-boolean p7, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 212
    iput-object p5, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 213
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZJ)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Landroid/content/ComponentName;
    .param p3, "configurationActivity"    # Landroid/content/ComponentName;
    .param p4, "conditionId"    # Landroid/net/Uri;
    .param p5, "policy"    # Landroid/service/notification/ZenPolicy;
    .param p6, "interruptionFilter"    # I
    .param p7, "enabled"    # Z
    .param p8, "creationTime"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    invoke-direct/range {p0 .. p7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    .line 225
    move v0, p7

    move p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "name":Ljava/lang/String;
    .local v0, "enabled":Z
    .local p2, "name":Ljava/lang/String;
    .local p3, "owner":Landroid/content/ComponentName;
    .local p4, "configurationActivity":Landroid/content/ComponentName;
    .local p5, "conditionId":Landroid/net/Uri;
    .local p6, "policy":Landroid/service/notification/ZenPolicy;
    .local p7, "interruptionFilter":I
    iput-wide p8, p1, Landroid/app/AutomaticZenRule;->creationTime:J

    .line 226
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Landroid/content/ComponentName;
    .param p3, "conditionId"    # Landroid/net/Uri;
    .param p4, "interruptionFilter"    # I
    .param p5, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "owner":Landroid/content/ComponentName;
    .end local p3    # "conditionId":Landroid/net/Uri;
    .end local p4    # "interruptionFilter":I
    .end local p5    # "enabled":Z
    .local v1, "name":Ljava/lang/String;
    .local v2, "owner":Landroid/content/ComponentName;
    .local v4, "conditionId":Landroid/net/Uri;
    .local v6, "interruptionFilter":I
    .local v7, "enabled":Z
    invoke-direct/range {v0 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    .line 174
    return-void
.end method

.method private static blacklist checkValidType(I)I
    .registers 3
    .param p0, "type"    # I

    .line 500
    const/4 v0, -0x1

    if-lt p0, v0, :cond_8

    const/4 v0, 0x7

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "Rule type must be one of TYPE_UNKNOWN, TYPE_OTHER, TYPE_SCHEDULE_TIME, TYPE_SCHEDULE_CALENDAR, TYPE_BEDTIME, TYPE_DRIVING, TYPE_IMMERSIVE, TYPE_THEATER, or TYPE_MANAGED"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 504
    return p0
.end method

.method public static blacklist fieldsToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "bitmask"    # I

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v0, "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 561
    const-string v1, "FIELD_NAME"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    .line 564
    const-string v1, "FIELD_INTERRUPTION_FILTER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    .line 567
    const-string v1, "FIELD_ICON"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "cn"    # Landroid/content/ComponentName;

    .line 617
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 618
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 619
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-object v0
.end method

.method private static blacklist getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .line 626
    const/16 v0, 0x1f4

    invoke-static {p0, v0}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getTrimmedString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 630
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_e

    .line 631
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 633
    :cond_e
    return-object p0
.end method

.method private static blacklist getTrimmedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p0, "input"    # Landroid/net/Uri;

    .line 641
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_1b

    .line 642
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 644
    :cond_1b
    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 574
    instance-of v0, p1, Landroid/app/AutomaticZenRule;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 575
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 576
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/app/AutomaticZenRule;

    .line 577
    .local v2, "other":Landroid/app/AutomaticZenRule;
    iget-boolean v3, v2, Landroid/app/AutomaticZenRule;->enabled:Z

    iget-boolean v4, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    if-ne v3, v4, :cond_85

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 578
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    iget v3, v2, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    iget v4, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    if-ne v3, v4, :cond_85

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 580
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    .line 581
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 582
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 583
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    .line 584
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-wide v3, v2, Landroid/app/AutomaticZenRule;->creationTime:J

    iget-wide v5, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_85

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 586
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-boolean v3, v2, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    iget-boolean v4, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    if-ne v3, v4, :cond_85

    iget v3, v2, Landroid/app/AutomaticZenRule;->mIconResId:I

    iget v4, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    if-ne v3, v4, :cond_85

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    .line 589
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    iget v3, v2, Landroid/app/AutomaticZenRule;->mType:I

    iget v4, p0, Landroid/app/AutomaticZenRule;->mType:I

    if-ne v3, v4, :cond_85

    move v1, v0

    goto :goto_86

    :cond_85
    nop

    .line 577
    :goto_86
    return v1
.end method

.method public whitelist getConditionId()Landroid/net/Uri;
    .registers 2

    .line 268
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getConfigurationActivity()Landroid/content/ComponentName;
    .registers 2

    .line 261
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getCreationTime()J
    .registers 3

    .line 311
    iget-wide v0, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    return-wide v0
.end method

.method public whitelist getDeviceEffects()Landroid/service/notification/ZenDeviceEffects;
    .registers 2

    .line 304
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    return-object v0
.end method

.method public whitelist getIconResId()I
    .registers 2

    .line 462
    iget v0, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    return v0
.end method

.method public whitelist getInterruptionFilter()I
    .registers 2

    .line 275
    iget v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOwner()Landroid/content/ComponentName;
    .registers 2

    .line 253
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 420
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTriggerDescription()Ljava/lang/String;
    .registers 2

    .line 443
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 427
    iget v0, p0, Landroid/app/AutomaticZenRule;->mType:I

    return v0
.end method

.method public whitelist getZenPolicy()Landroid/service/notification/ZenPolicy;
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 16

    .line 595
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    iget v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    iget-object v5, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    iget-object v6, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v7, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v8, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-wide v9, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    .line 596
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    .line 597
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget v0, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    iget v0, p0, Landroid/app/AutomaticZenRule;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    .line 595
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 289
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    return v0
.end method

.method public whitelist isManualInvocationAllowed()Z
    .registers 2

    .line 478
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    return v0
.end method

.method public whitelist setConditionId(Landroid/net/Uri;)V
    .registers 3
    .param p1, "conditionId"    # Landroid/net/Uri;

    .line 318
    invoke-static {p1}, Landroid/app/AutomaticZenRule;->getTrimmedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 319
    return-void
.end method

.method public whitelist setConfigurationActivity(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 406
    invoke-static {p1}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 407
    return-void
.end method

.method public whitelist setDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V
    .registers 2
    .param p1, "deviceEffects"    # Landroid/service/notification/ZenDeviceEffects;

    .line 374
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 375
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 351
    iput-boolean p1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 352
    return-void
.end method

.method public blacklist setIconResId(I)V
    .registers 2
    .param p1, "iconResId"    # I

    .line 470
    iput p1, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    .line 471
    return-void
.end method

.method public whitelist setInterruptionFilter(I)V
    .registers 2
    .param p1, "interruptionFilter"    # I

    .line 337
    iput p1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    .line 338
    return-void
.end method

.method public blacklist setManualInvocationAllowed(Z)V
    .registers 2
    .param p1, "allowManualInvocation"    # Z

    .line 487
    iput-boolean p1, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    .line 488
    return-void
.end method

.method public whitelist setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 344
    invoke-static {p1}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public blacklist setOwner(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "owner"    # Landroid/content/ComponentName;

    .line 391
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    .line 392
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 413
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public blacklist setTriggerDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "triggerDescription"    # Ljava/lang/String;

    .line 455
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    .line 456
    return-void
.end method

.method public blacklist setType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 435
    invoke-static {p1}, Landroid/app/AutomaticZenRule;->checkValidType(I)I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule;->mType:I

    .line 436
    return-void
.end method

.method public whitelist setZenPolicy(Landroid/service/notification/ZenPolicy;)V
    .registers 3
    .param p1, "zenPolicy"    # Landroid/service/notification/ZenPolicy;

    .line 362
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 363
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 539
    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 540
    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 541
    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AutomaticZenRule;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 542
    const-string v1, ",interruptionFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 543
    const-string v1, ",pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 544
    const-string v1, ",conditionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 545
    const-string v1, ",owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 546
    const-string v1, ",configActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    const-string v1, ",creationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 548
    const-string v1, ",mZenPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 549
    const-string v1, ",deviceEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 550
    const-string v1, ",allowManualInvocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 551
    const-string v1, ",iconResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 552
    const-string v1, ",triggerDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 553
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    return-object v0
.end method

.method public blacklist validate()V
    .registers 2

    .line 492
    iget v0, p0, Landroid/app/AutomaticZenRule;->mType:I

    invoke-static {v0}, Landroid/app/AutomaticZenRule;->checkValidType(I)I

    .line 493
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz v0, :cond_e

    .line 494
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->validate()V

    .line 496
    :cond_e
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 514
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 516
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_17

    .line 519
    :cond_14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    :goto_17
    iget v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 523
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 524
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 525
    iget-wide v2, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 526
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 527
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 529
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 530
    iget v0, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 532
    iget v0, p0, Landroid/app/AutomaticZenRule;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    return-void
.end method
