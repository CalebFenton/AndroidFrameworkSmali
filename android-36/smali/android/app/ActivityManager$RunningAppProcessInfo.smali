.class public Landroid/app/ActivityManager$RunningAppProcessInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningAppProcessInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$RunningAppProcessInfo$Importance;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o FLAG_CANT_SAVE_STATE:I = 0x1

.field public static final greylist-max-r FLAG_HAS_ACTIVITIES:I = 0x4

.field public static final greylist-max-r FLAG_PERSISTENT:I = 0x2

.field public static final whitelist IMPORTANCE_BACKGROUND:I = 0x190

.field public static final whitelist IMPORTANCE_CACHED:I = 0x190

.field public static final whitelist IMPORTANCE_CANT_SAVE_STATE:I = 0x15e

.field public static final greylist-max-r IMPORTANCE_CANT_SAVE_STATE_PRE_26:I = 0xaa

.field public static final whitelist IMPORTANCE_EMPTY:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IMPORTANCE_FOREGROUND:I = 0x64

.field public static final whitelist IMPORTANCE_FOREGROUND_SERVICE:I = 0x7d

.field public static final whitelist IMPORTANCE_GONE:I = 0x3e8

.field public static final whitelist IMPORTANCE_PERCEPTIBLE:I = 0xe6

.field public static final whitelist IMPORTANCE_PERCEPTIBLE_PRE_26:I = 0x82

.field public static final whitelist IMPORTANCE_SERVICE:I = 0x12c

.field public static final whitelist IMPORTANCE_TOP_SLEEPING:I = 0x145

.field public static final whitelist IMPORTANCE_TOP_SLEEPING_PRE_28:I = 0x96
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IMPORTANCE_VISIBLE:I = 0xc8

.field public static final whitelist REASON_PROVIDER_IN_USE:I = 0x1

.field public static final whitelist REASON_SERVICE_IN_USE:I = 0x2

.field public static final whitelist REASON_UNKNOWN:I


# instance fields
.field public greylist flags:I

.field public whitelist importance:I

.field public whitelist importanceReasonCode:I

.field public whitelist importanceReasonComponent:Landroid/content/ComponentName;

.field public greylist-max-o importanceReasonImportance:I

.field public whitelist importanceReasonPid:I

.field public blacklist isFocused:Z

.field public blacklist lastActivityTime:J

.field public whitelist lastTrimLevel:I

.field public whitelist lru:I

.field public whitelist pid:I

.field public blacklist pkgDeps:[Ljava/lang/String;

.field public whitelist pkgList:[Ljava/lang/String;

.field public whitelist processName:Ljava/lang/String;

.field public greylist processState:I

.field public whitelist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4190
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 4115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4116
    const/16 v0, 0x64

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 4117
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 4118
    const/4 v1, 0x6

    iput v1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 4119
    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 4120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 4121
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 4200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4201
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 4202
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 6
    .param p1, "pProcessName"    # Ljava/lang/String;
    .param p2, "pPid"    # I
    .param p3, "pArr"    # [Ljava/lang/String;

    .line 4123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4124
    iput-object p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 4125
    iput p2, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 4126
    iput-object p3, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 4127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 4128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 4129
    return-void
.end method

.method public static greylist-max-o importanceToProcState(I)I
    .registers 3
    .param p0, "importance"    # I

    .line 4006
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_7

    .line 4007
    const/16 v0, 0x14

    return v0

    .line 4008
    :cond_7
    const/16 v0, 0x190

    if-lt p0, v0, :cond_e

    .line 4009
    const/16 v0, 0xe

    return v0

    .line 4010
    :cond_e
    const/16 v0, 0x15e

    if-lt p0, v0, :cond_15

    .line 4011
    const/16 v0, 0xd

    return v0

    .line 4012
    :cond_15
    const/16 v0, 0x145

    if-lt p0, v0, :cond_1c

    .line 4013
    const/16 v0, 0xc

    return v0

    .line 4014
    :cond_1c
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_23

    .line 4015
    const/16 v0, 0xa

    return v0

    .line 4016
    :cond_23
    const/16 v0, 0xe6

    if-lt p0, v0, :cond_2a

    .line 4017
    const/16 v0, 0x8

    return v0

    .line 4018
    :cond_2a
    const/16 v0, 0xc8

    const/4 v1, 0x6

    if-lt p0, v0, :cond_30

    .line 4019
    return v1

    .line 4020
    :cond_30
    const/16 v0, 0x96

    if-lt p0, v0, :cond_35

    .line 4021
    return v1

    .line 4022
    :cond_35
    const/16 v0, 0x7d

    if-lt p0, v0, :cond_3b

    .line 4023
    const/4 v0, 0x4

    return v0

    .line 4026
    :cond_3b
    const/4 v0, 0x2

    return v0
.end method

.method public static greylist-max-r procStateToImportance(I)I
    .registers 2
    .param p0, "procState"    # I

    .line 3948
    const/16 v0, 0x14

    if-ne p0, v0, :cond_7

    .line 3949
    const/16 v0, 0x3e8

    return v0

    .line 3950
    :cond_7
    const/16 v0, 0xe

    if-lt p0, v0, :cond_e

    .line 3951
    const/16 v0, 0x190

    return v0

    .line 3952
    :cond_e
    const/16 v0, 0xd

    if-ne p0, v0, :cond_15

    .line 3953
    const/16 v0, 0x15e

    return v0

    .line 3954
    :cond_15
    const/16 v0, 0xc

    if-lt p0, v0, :cond_1c

    .line 3955
    const/16 v0, 0x145

    return v0

    .line 3956
    :cond_1c
    const/16 v0, 0xa

    if-lt p0, v0, :cond_23

    .line 3957
    const/16 v0, 0x12c

    return v0

    .line 3958
    :cond_23
    const/16 v0, 0x8

    if-lt p0, v0, :cond_2a

    .line 3959
    const/16 v0, 0xe6

    return v0

    .line 3960
    :cond_2a
    const/4 v0, 0x6

    if-lt p0, v0, :cond_30

    .line 3961
    const/16 v0, 0xc8

    return v0

    .line 3962
    :cond_30
    const/4 v0, 0x4

    if-lt p0, v0, :cond_36

    .line 3963
    const/16 v0, 0x7d

    return v0

    .line 3965
    :cond_36
    const/16 v0, 0x64

    return v0
.end method

.method public static greylist-max-o procStateToImportanceForClient(ILandroid/content/Context;)I
    .registers 3
    .param p0, "procState"    # I
    .param p1, "clientContext"    # Landroid/content/Context;

    .line 3978
    nop

    .line 3979
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 3978
    invoke-static {p0, v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o procStateToImportanceForTargetSdk(II)I
    .registers 4
    .param p0, "procState"    # I
    .param p1, "targetSdkVersion"    # I

    .line 3988
    invoke-static {p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v0

    .line 3991
    .local v0, "importance":I
    const/16 v1, 0x1a

    if-ge p1, v1, :cond_15

    .line 3992
    sparse-switch v0, :sswitch_data_16

    goto :goto_15

    .line 3998
    :sswitch_c
    const/16 v1, 0xaa

    return v1

    .line 3996
    :sswitch_f
    const/16 v1, 0x96

    return v1

    .line 3994
    :sswitch_12
    const/16 v1, 0x82

    return v1

    .line 4001
    :cond_15
    :goto_15
    return v0

    :sswitch_data_16
    .sparse-switch
        0xe6 -> :sswitch_12
        0x145 -> :sswitch_f
        0x15e -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method public blacklist copyTo(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .registers 4
    .param p1, "other"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4178
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 4179
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 4180
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4181
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 4182
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 4183
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 4184
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 4185
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 4186
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    iput-boolean v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 4187
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    iput-wide v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 4188
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 4132
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 4155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 4156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 4157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 4158
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 4159
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    .line 4160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 4162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 4163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 4164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 4165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 4166
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 4167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    .line 4168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 4169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    :goto_5d
    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 4170
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 4171
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4136
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4137
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4138
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4139
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4140
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4141
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4142
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4143
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4144
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4145
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4146
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4147
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 4148
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4149
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4150
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4151
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4152
    return-void
.end method
