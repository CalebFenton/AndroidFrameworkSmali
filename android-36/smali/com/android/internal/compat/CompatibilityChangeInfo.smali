.class public Lcom/android/internal/compat/CompatibilityChangeInfo;
.super Ljava/lang/Object;
.source "CompatibilityChangeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/compat/CompatibilityChangeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChangeId:J

.field private final blacklist mDescription:Ljava/lang/String;

.field private final blacklist mDisabled:Z

.field private final blacklist mEnableSinceTargetSdk:I

.field private final blacklist mLoggingOnly:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mOverridable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 163
    new-instance v0, Lcom/android/internal/compat/CompatibilityChangeInfo$1;

    invoke-direct {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/compat/CompatibilityChangeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    .line 105
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/compat/CompatibilityChangeInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/compat/CompatibilityChangeInfo;)V
    .registers 4
    .param p1, "other"    # Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iget-wide v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    iput-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    .line 89
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    .line 90
    iget v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    iput v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    .line 91
    iget-boolean v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    .line 92
    iget-boolean v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    .line 93
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    .line 94
    iget-boolean v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    .line 95
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Long;Ljava/lang/String;IIZZLjava/lang/String;Z)V
    .registers 11
    .param p1, "changeId"    # Ljava/lang/Long;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "enableAfterTargetSdk"    # I
    .param p4, "enableSinceTargetSdk"    # I
    .param p5, "disabled"    # Z
    .param p6, "loggingOnly"    # Z
    .param p7, "description"    # Ljava/lang/String;
    .param p8, "overridable"    # Z

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    .line 71
    iput-object p2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    .line 72
    if-lez p3, :cond_12

    .line 75
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    goto :goto_1a

    .line 76
    :cond_12
    if-lez p4, :cond_17

    .line 77
    iput p4, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    goto :goto_1a

    .line 79
    :cond_17
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    .line 81
    :goto_1a
    iput-boolean p5, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    .line 82
    iput-boolean p6, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    .line 83
    iput-object p7, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    .line 84
    iput-boolean p8, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 147
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 148
    return v0

    .line 150
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_46

    instance-of v2, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;

    if-nez v2, :cond_c

    goto :goto_46

    .line 153
    :cond_c
    move-object v2, p1

    check-cast v2, Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 154
    .local v2, "that":Lcom/android/internal/compat/CompatibilityChangeInfo;
    iget-wide v3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    iget-wide v5, v2, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_44

    iget-object v3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget v3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    iget v4, v2, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    iget-boolean v4, v2, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    iget-boolean v4, v2, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    if-ne v3, v4, :cond_44

    iget-object v3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-boolean v3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    iget-boolean v4, v2, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    if-ne v3, v4, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    .line 154
    :goto_45
    return v0

    .line 151
    .end local v2    # "that":Lcom/android/internal/compat/CompatibilityChangeInfo;
    :cond_46
    :goto_46
    return v1
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDisabled()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    return v0
.end method

.method public blacklist getEnableSinceTargetSdk()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    return v0
.end method

.method public blacklist getId()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    return-wide v0
.end method

.method public blacklist getLoggingOnly()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOverridable()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompatibilityChangeInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 128
    const-string v1, "; name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 131
    const-string v1, "; enableSinceTargetSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    :cond_36
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 134
    const-string v1, "; disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_41
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 137
    const-string v1, "; loggingOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_4c
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getOverridable()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 140
    const-string v1, "; overridable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_57
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 114
    iget-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 118
    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    return-void
.end method
