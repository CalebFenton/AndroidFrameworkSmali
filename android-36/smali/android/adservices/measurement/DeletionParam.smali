.class public final Landroid/adservices/measurement/DeletionParam;
.super Ljava/lang/Object;
.source "DeletionParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/DeletionParam$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/measurement/DeletionParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private final blacklist mDeletionMode:I

.field private final blacklist mDomainUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEnd:Ljava/time/Instant;

.field private final blacklist mMatchBehavior:I

.field private final blacklist mOriginUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSdkPackageName:Ljava/lang/String;

.field private final blacklist mStart:Ljava/time/Instant;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    new-instance v0, Landroid/adservices/measurement/DeletionParam$1;

    invoke-direct {v0}, Landroid/adservices/measurement/DeletionParam$1;-><init>()V

    sput-object v0, Landroid/adservices/measurement/DeletionParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/measurement/DeletionParam$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/measurement/DeletionParam$Builder;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/adservices/measurement/DeletionParam$Builder;->-$$Nest$fgetmOriginUris(Landroid/adservices/measurement/DeletionParam$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mOriginUris:Ljava/util/List;

    .line 46
    invoke-static {p1}, Landroid/adservices/measurement/DeletionParam$Builder;->-$$Nest$fgetmDomainUris(Landroid/adservices/measurement/DeletionParam$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mDomainUris:Ljava/util/List;

    .line 47
    invoke-static {p1}, Landroid/adservices/measurement/DeletionParam$Builder;->-$$Nest$fgetmDeletionMode(Landroid/adservices/measurement/DeletionParam$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/measurement/DeletionParam;->mDeletionMode:I

    .line 48
    invoke-static {p1}, Landroid/adservices/measurement/DeletionParam$Builder;->-$$Nest$fgetmMatchBehavior(Landroid/adservices/measurement/DeletionParam$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/measurement/DeletionParam;->mMatchBehavior:I

    .line 49
    invoke-static {p1}, Landroid/adservices/measurement/DeletionParam$Builder;->-$$Nest$fgetmStart(Landroid/adservices/measurement/DeletionParam$Builder;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mStart:Ljava/time/Instant;

    .line 50
    invoke-static {p1}, Landroid/adservices/measurement/DeletionParam$Builder;->-$$Nest$fgetmEnd(Landroid/adservices/measurement/DeletionParam$Builder;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mEnd:Ljava/time/Instant;

    .line 51
    invoke-static {p1}, Landroid/adservices/measurement/DeletionParam$Builder;->-$$Nest$fgetmAppPackageName(Landroid/adservices/measurement/DeletionParam$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mAppPackageName:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Landroid/adservices/measurement/DeletionParam$Builder;->-$$Nest$fgetmSdkPackageName(Landroid/adservices/measurement/DeletionParam$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mSdkPackageName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/measurement/DeletionParam$Builder;Landroid/adservices/measurement/DeletionParam-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/DeletionParam;-><init>(Landroid/adservices/measurement/DeletionParam$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mAppPackageName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mSdkPackageName:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mDomainUris:Ljava/util/List;

    .line 61
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mDomainUris:Ljava/util/List;

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mOriginUris:Ljava/util/List;

    .line 64
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mOriginUris:Ljava/util/List;

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 67
    .local v0, "hasStart":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v2

    iput-object v2, p0, Landroid/adservices/measurement/DeletionParam;->mStart:Ljava/time/Instant;

    goto :goto_3f

    .line 70
    :cond_3d
    iput-object v1, p0, Landroid/adservices/measurement/DeletionParam;->mStart:Ljava/time/Instant;

    .line 73
    :goto_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 74
    .local v2, "hasEnd":Z
    if-eqz v2, :cond_50

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v1

    iput-object v1, p0, Landroid/adservices/measurement/DeletionParam;->mEnd:Ljava/time/Instant;

    goto :goto_52

    .line 77
    :cond_50
    iput-object v1, p0, Landroid/adservices/measurement/DeletionParam;->mEnd:Ljava/time/Instant;

    .line 80
    :goto_52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/adservices/measurement/DeletionParam;->mDeletionMode:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/adservices/measurement/DeletionParam;->mMatchBehavior:I

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/measurement/DeletionParam-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/DeletionParam;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeletionMode()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/adservices/measurement/DeletionParam;->mDeletionMode:I

    return v0
.end method

.method public blacklist getDomainUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mDomainUris:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getEnd()Ljava/time/Instant;
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mEnd:Ljava/time/Instant;

    return-object v0
.end method

.method public blacklist getMatchBehavior()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/adservices/measurement/DeletionParam;->mMatchBehavior:I

    return v0
.end method

.method public blacklist getOriginUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mOriginUris:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSdkPackageName()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mSdkPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStart()Ljava/time/Instant;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mStart:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mSdkPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mDomainUris:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 112
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mOriginUris:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 114
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mStart:Ljava/time/Instant;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    .line 115
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 116
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mStart:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2d

    .line 118
    :cond_2a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    :goto_2d
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mEnd:Ljava/time/Instant;

    if-eqz v0, :cond_3e

    .line 122
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 123
    iget-object v0, p0, Landroid/adservices/measurement/DeletionParam;->mEnd:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_41

    .line 125
    :cond_3e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 128
    :goto_41
    iget v0, p0, Landroid/adservices/measurement/DeletionParam;->mDeletionMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Landroid/adservices/measurement/DeletionParam;->mMatchBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return-void
.end method
