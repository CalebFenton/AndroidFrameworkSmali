.class public Landroid/hardware/location/ActivityChangedEvent;
.super Ljava/lang/Object;
.source "ActivityChangedEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/ActivityChangedEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mActivityRecognitionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/location/ActivityRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Landroid/hardware/location/ActivityChangedEvent$1;

    invoke-direct {v0}, Landroid/hardware/location/ActivityChangedEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/location/ActivityChangedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>([Landroid/hardware/location/ActivityRecognitionEvent;)V
    .registers 4
    .param p1, "activityRecognitionEvents"    # [Landroid/hardware/location/ActivityRecognitionEvent;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_c

    .line 41
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    .line 42
    return-void

    .line 37
    :cond_c
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter \'activityRecognitionEvents\' must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getActivityRecognitionEvents()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroid/hardware/location/ActivityRecognitionEvent;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Landroid/hardware/location/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ ActivityChangedEvent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/hardware/location/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/ActivityRecognitionEvent;

    .line 85
    .local v2, "event":Landroid/hardware/location/ActivityRecognitionEvent;
    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Landroid/hardware/location/ActivityRecognitionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .end local v2    # "event":Landroid/hardware/location/ActivityRecognitionEvent;
    goto :goto_d

    .line 88
    :cond_26
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget-object v0, p0, Landroid/hardware/location/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/hardware/location/ActivityRecognitionEvent;

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/location/ActivityRecognitionEvent;

    .line 76
    .local v0, "activityRecognitionEventArray":[Landroid/hardware/location/ActivityRecognitionEvent;
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 78
    return-void
.end method
