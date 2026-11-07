.class public final Landroid/adservices/measurement/RegistrationRequest;
.super Ljava/lang/Object;
.source "RegistrationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/RegistrationRequest$Builder;,
        Landroid/adservices/measurement/RegistrationRequest$RegistrationType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/measurement/RegistrationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INVALID:I = 0x0

.field public static final blacklist REGISTER_SOURCE:I = 0x1

.field public static final blacklist REGISTER_TRIGGER:I = 0x2


# instance fields
.field private final blacklist mAdIdValue:Ljava/lang/String;

.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private final blacklist mInputEvent:Landroid/view/InputEvent;

.field private final blacklist mIsAdIdPermissionGranted:Z

.field private final blacklist mRegistrationType:I

.field private final blacklist mRegistrationUri:Landroid/net/Uri;

.field private final blacklist mRequestTime:J

.field private final blacklist mSdkPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Landroid/adservices/measurement/RegistrationRequest$1;

    invoke-direct {v0}, Landroid/adservices/measurement/RegistrationRequest$1;-><init>()V

    sput-object v0, Landroid/adservices/measurement/RegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/measurement/RegistrationRequest$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/adservices/measurement/RegistrationRequest$Builder;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Landroid/adservices/measurement/RegistrationRequest$Builder;->-$$Nest$fgetmRegistrationType(Landroid/adservices/measurement/RegistrationRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mRegistrationType:I

    .line 65
    invoke-static {p1}, Landroid/adservices/measurement/RegistrationRequest$Builder;->-$$Nest$fgetmRegistrationUri(Landroid/adservices/measurement/RegistrationRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mRegistrationUri:Landroid/net/Uri;

    .line 66
    invoke-static {p1}, Landroid/adservices/measurement/RegistrationRequest$Builder;->-$$Nest$fgetmInputEvent(Landroid/adservices/measurement/RegistrationRequest$Builder;)Landroid/view/InputEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    .line 67
    invoke-static {p1}, Landroid/adservices/measurement/RegistrationRequest$Builder;->-$$Nest$fgetmAppPackageName(Landroid/adservices/measurement/RegistrationRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mAppPackageName:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Landroid/adservices/measurement/RegistrationRequest$Builder;->-$$Nest$fgetmSdkPackageName(Landroid/adservices/measurement/RegistrationRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mSdkPackageName:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Landroid/adservices/measurement/RegistrationRequest$Builder;->-$$Nest$fgetmRequestTime(Landroid/adservices/measurement/RegistrationRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mRequestTime:J

    .line 70
    invoke-static {p1}, Landroid/adservices/measurement/RegistrationRequest$Builder;->-$$Nest$fgetmIsAdIdPermissionGranted(Landroid/adservices/measurement/RegistrationRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mIsAdIdPermissionGranted:Z

    .line 71
    invoke-static {p1}, Landroid/adservices/measurement/RegistrationRequest$Builder;->-$$Nest$fgetmAdIdValue(Landroid/adservices/measurement/RegistrationRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mAdIdValue:Ljava/lang/String;

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/measurement/RegistrationRequest$Builder;Landroid/adservices/measurement/RegistrationRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/RegistrationRequest;-><init>(Landroid/adservices/measurement/RegistrationRequest$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mRegistrationType:I

    .line 79
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mRegistrationUri:Landroid/net/Uri;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mAppPackageName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mSdkPackageName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 83
    .local v0, "hasInputEvent":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 84
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    iput-object v2, p0, Landroid/adservices/measurement/RegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    goto :goto_33

    .line 86
    :cond_31
    iput-object v1, p0, Landroid/adservices/measurement/RegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    .line 88
    :goto_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/adservices/measurement/RegistrationRequest;->mRequestTime:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/adservices/measurement/RegistrationRequest;->mIsAdIdPermissionGranted:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 91
    .local v2, "hasAdIdValue":Z
    if-eqz v2, :cond_4c

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/adservices/measurement/RegistrationRequest;->mAdIdValue:Ljava/lang/String;

    goto :goto_4e

    .line 94
    :cond_4c
    iput-object v1, p0, Landroid/adservices/measurement/RegistrationRequest;->mAdIdValue:Ljava/lang/String;

    .line 96
    :goto_4e
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/measurement/RegistrationRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/RegistrationRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdIdValue()Ljava/lang/String;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mAdIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInputEvent()Landroid/view/InputEvent;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    return-object v0
.end method

.method public blacklist getRegistrationType()I
    .registers 2

    .line 148
    iget v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mRegistrationType:I

    return v0
.end method

.method public blacklist getRegistrationUri()Landroid/net/Uri;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mRegistrationUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getRequestTime()J
    .registers 3

    .line 178
    iget-wide v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mRequestTime:J

    return-wide v0
.end method

.method public blacklist getSdkPackageName()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mSdkPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isAdIdPermissionGranted()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mIsAdIdPermissionGranted:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mRegistrationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mRegistrationUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    iget-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mSdkPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 130
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 131
    iget-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/InputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29

    .line 133
    :cond_26
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 135
    :goto_29
    iget-wide v3, p0, Landroid/adservices/measurement/RegistrationRequest;->mRequestTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-boolean v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mIsAdIdPermissionGranted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 137
    iget-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mAdIdValue:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 138
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 139
    iget-object v0, p0, Landroid/adservices/measurement/RegistrationRequest;->mAdIdValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_43

    .line 141
    :cond_40
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 143
    :goto_43
    return-void
.end method
