.class public final Landroid/hardware/radio/RadioAlert$Geocode;
.super Ljava/lang/Object;
.source "RadioAlert.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Geocode"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioAlert$Geocode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mValue:Ljava/lang/String;

.field private final blacklist mValueName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 333
    new-instance v0, Landroid/hardware/radio/RadioAlert$Geocode$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioAlert$Geocode$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioAlert$Geocode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$Geocode;->mValueName:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$Geocode;->mValue:Ljava/lang/String;

    .line 331
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioAlert-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioAlert$Geocode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "valueName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const-string v0, "Geocode value name can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$Geocode;->mValueName:Ljava/lang/String;

    .line 325
    const-string v0, "Geocode value can not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$Geocode;->mValue:Ljava/lang/String;

    .line 326
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 393
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 394
    return v0

    .line 396
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/RadioAlert$Geocode;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioAlert$Geocode;

    .line 400
    .local v1, "other":Landroid/hardware/radio/RadioAlert$Geocode;
    iget-object v3, p0, Landroid/hardware/radio/RadioAlert$Geocode;->mValueName:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/RadioAlert$Geocode;->mValueName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/hardware/radio/RadioAlert$Geocode;->mValue:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/RadioAlert$Geocode;->mValue:Ljava/lang/String;

    .line 401
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    .line 400
    :goto_22
    return v0

    .line 397
    .end local v1    # "other":Landroid/hardware/radio/RadioAlert$Geocode;
    :cond_23
    return v2
.end method

.method public whitelist getValue()Ljava/lang/String;
    .registers 2

    .line 366
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$Geocode;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getValueName()Ljava/lang/String;
    .registers 2

    .line 356
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$Geocode;->mValueName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 388
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$Geocode;->mValueName:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$Geocode;->mValue:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gecode [valueName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$Geocode;->mValueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$Geocode;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

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

    .line 376
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$Geocode;->mValueName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$Geocode;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 378
    return-void
.end method
