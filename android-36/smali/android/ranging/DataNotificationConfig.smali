.class public final Landroid/ranging/DataNotificationConfig;
.super Ljava/lang/Object;
.source "DataNotificationConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/DataNotificationConfig$Builder;,
        Landroid/ranging/DataNotificationConfig$NotificationConfigType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/DataNotificationConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NOTIFICATION_CONFIG_DISABLE:I = 0x0

.field public static final whitelist NOTIFICATION_CONFIG_ENABLE:I = 0x1

.field public static final whitelist NOTIFICATION_CONFIG_PROXIMITY_EDGE:I = 0x3

.field public static final whitelist NOTIFICATION_CONFIG_PROXIMITY_LEVEL:I = 0x2


# instance fields
.field private final blacklist mNotificationConfigType:I

.field private final blacklist mProximityFarCm:I

.field private final blacklist mProximityNearCm:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Landroid/ranging/DataNotificationConfig$1;

    invoke-direct {v0}, Landroid/ranging/DataNotificationConfig$1;-><init>()V

    sput-object v0, Landroid/ranging/DataNotificationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/DataNotificationConfig;->mNotificationConfigType:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/DataNotificationConfig;->mProximityNearCm:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/DataNotificationConfig;->mProximityFarCm:I

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/DataNotificationConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/DataNotificationConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/DataNotificationConfig$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/ranging/DataNotificationConfig$Builder;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Landroid/ranging/DataNotificationConfig$Builder;->-$$Nest$fgetmProximityNearCm(Landroid/ranging/DataNotificationConfig$Builder;)I

    move-result v0

    invoke-static {p1}, Landroid/ranging/DataNotificationConfig$Builder;->-$$Nest$fgetmProximityFarCm(Landroid/ranging/DataNotificationConfig$Builder;)I

    move-result v1

    if-gt v0, v1, :cond_20

    .line 105
    invoke-static {p1}, Landroid/ranging/DataNotificationConfig$Builder;->-$$Nest$fgetmNotificationConfigType(Landroid/ranging/DataNotificationConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/DataNotificationConfig;->mNotificationConfigType:I

    .line 106
    invoke-static {p1}, Landroid/ranging/DataNotificationConfig$Builder;->-$$Nest$fgetmProximityNearCm(Landroid/ranging/DataNotificationConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/DataNotificationConfig;->mProximityNearCm:I

    .line 107
    invoke-static {p1}, Landroid/ranging/DataNotificationConfig$Builder;->-$$Nest$fgetmProximityFarCm(Landroid/ranging/DataNotificationConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/DataNotificationConfig;->mProximityFarCm:I

    .line 108
    return-void

    .line 102
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ntf proximity near cannot be greater than Ntf proximity far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/DataNotificationConfig$Builder;Landroid/ranging/DataNotificationConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/DataNotificationConfig;-><init>(Landroid/ranging/DataNotificationConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 216
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 217
    :cond_4
    instance-of v1, p1, Landroid/ranging/DataNotificationConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    move-object v1, p1

    check-cast v1, Landroid/ranging/DataNotificationConfig;

    .line 218
    .local v1, "that":Landroid/ranging/DataNotificationConfig;
    iget v3, p0, Landroid/ranging/DataNotificationConfig;->mNotificationConfigType:I

    iget v4, v1, Landroid/ranging/DataNotificationConfig;->mNotificationConfigType:I

    if-ne v3, v4, :cond_1f

    iget v3, p0, Landroid/ranging/DataNotificationConfig;->mProximityNearCm:I

    iget v4, v1, Landroid/ranging/DataNotificationConfig;->mProximityNearCm:I

    if-ne v3, v4, :cond_1f

    iget v3, p0, Landroid/ranging/DataNotificationConfig;->mProximityFarCm:I

    iget v4, v1, Landroid/ranging/DataNotificationConfig;->mProximityFarCm:I

    if-ne v3, v4, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v2

    :goto_20
    return v0

    .line 217
    .end local v1    # "that":Landroid/ranging/DataNotificationConfig;
    :cond_21
    return v2
.end method

.method public whitelist getNotificationConfigType()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/ranging/DataNotificationConfig;->mNotificationConfigType:I

    return v0
.end method

.method public whitelist getProximityFarCm()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/ranging/DataNotificationConfig;->mProximityFarCm:I

    return v0
.end method

.method public whitelist getProximityNearCm()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/ranging/DataNotificationConfig;->mProximityNearCm:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 228
    iget v0, p0, Landroid/ranging/DataNotificationConfig;->mNotificationConfigType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/ranging/DataNotificationConfig;->mProximityNearCm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/ranging/DataNotificationConfig;->mProximityFarCm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataNotificationConfig{ mNotificationConfigType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/DataNotificationConfig;->mNotificationConfigType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProximityNearCm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/DataNotificationConfig;->mProximityNearCm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProximityFarCm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/DataNotificationConfig;->mProximityFarCm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 71
    iget v0, p0, Landroid/ranging/DataNotificationConfig;->mNotificationConfigType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Landroid/ranging/DataNotificationConfig;->mProximityNearCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Landroid/ranging/DataNotificationConfig;->mProximityFarCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
