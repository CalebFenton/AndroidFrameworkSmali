.class public final Landroid/app/people/ConversationStatus;
.super Ljava/lang/Object;
.source "ConversationStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/people/ConversationStatus$Builder;,
        Landroid/app/people/ConversationStatus$Availability;,
        Landroid/app/people/ConversationStatus$ActivityType;
    }
.end annotation


# static fields
.field public static final whitelist ACTIVITY_ANNIVERSARY:I = 0x2

.field public static final whitelist ACTIVITY_AUDIO:I = 0x4

.field public static final whitelist ACTIVITY_BIRTHDAY:I = 0x1

.field public static final whitelist ACTIVITY_GAME:I = 0x6

.field public static final whitelist ACTIVITY_LOCATION:I = 0x7

.field public static final whitelist ACTIVITY_NEW_STORY:I = 0x3

.field public static final whitelist ACTIVITY_OTHER:I = 0x0

.field public static final whitelist ACTIVITY_UPCOMING_BIRTHDAY:I = 0x8

.field public static final whitelist ACTIVITY_VIDEO:I = 0x5

.field public static final whitelist AVAILABILITY_AVAILABLE:I = 0x0

.field public static final whitelist AVAILABILITY_BUSY:I = 0x1

.field public static final whitelist AVAILABILITY_OFFLINE:I = 0x2

.field public static final whitelist AVAILABILITY_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ConversationStatus"


# instance fields
.field private final blacklist mActivity:I

.field private blacklist mAvailability:I

.field private blacklist mDescription:Ljava/lang/CharSequence;

.field private blacklist mEndTimeMs:J

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mId:Ljava/lang/String;

.field private blacklist mStartTimeMs:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 233
    new-instance v0, Landroid/app/people/ConversationStatus$1;

    invoke-direct {v0}, Landroid/app/people/ConversationStatus$1;-><init>()V

    sput-object v0, Landroid/app/people/ConversationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/people/ConversationStatus$Builder;)V
    .registers 4
    .param p1, "b"    # Landroid/app/people/ConversationStatus$Builder;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iget-object v0, p1, Landroid/app/people/ConversationStatus$Builder;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    .line 116
    iget v0, p1, Landroid/app/people/ConversationStatus$Builder;->mActivity:I

    iput v0, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    .line 117
    iget v0, p1, Landroid/app/people/ConversationStatus$Builder;->mAvailability:I

    iput v0, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    .line 118
    iget-object v0, p1, Landroid/app/people/ConversationStatus$Builder;->mDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    .line 119
    iget-object v0, p1, Landroid/app/people/ConversationStatus$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    .line 120
    iget-wide v0, p1, Landroid/app/people/ConversationStatus$Builder;->mStartTimeMs:J

    iput-wide v0, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    .line 121
    iget-wide v0, p1, Landroid/app/people/ConversationStatus$Builder;->mEndTimeMs:J

    iput-wide v0, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    .line 122
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/people/ConversationStatus$Builder;Landroid/app/people/ConversationStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/people/ConversationStatus;-><init>(Landroid/app/people/ConversationStatus$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "p"    # Landroid/os/Parcel;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    .line 129
    const-class v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    .line 132
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/people/ConversationStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/people/ConversationStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 197
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 198
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_52

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_52

    .line 199
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/people/ConversationStatus;

    .line 200
    .local v2, "that":Landroid/app/people/ConversationStatus;
    iget v3, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    iget v4, v2, Landroid/app/people/ConversationStatus;->mActivity:I

    if-ne v3, v4, :cond_50

    iget v3, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    iget v4, v2, Landroid/app/people/ConversationStatus;->mAvailability:I

    if-ne v3, v4, :cond_50

    iget-wide v3, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    iget-wide v5, v2, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_50

    iget-wide v3, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    iget-wide v5, v2, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_50

    iget-object v3, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    .line 205
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v4, v2, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    .line 206
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    goto :goto_51

    :cond_50
    move v0, v1

    .line 200
    :goto_51
    return v0

    .line 198
    .end local v2    # "that":Landroid/app/people/ConversationStatus;
    :cond_52
    :goto_52
    return v1
.end method

.method public whitelist getActivity()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    return v0
.end method

.method public whitelist getAvailability()I
    .registers 2

    .line 164
    iget v0, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    return v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getEndTimeMillis()J
    .registers 3

    .line 192
    iget-wide v0, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    return-wide v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStartTimeMillis()J
    .registers 3

    .line 185
    iget-wide v0, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 211
    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    iget v1, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    iget-wide v5, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    .line 212
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 211
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConversationStatus{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAvailability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEndTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 136
    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 141
    iget-wide v0, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-wide v0, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    return-void
.end method
