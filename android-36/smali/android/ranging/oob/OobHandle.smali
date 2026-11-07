.class public final Landroid/ranging/oob/OobHandle;
.super Ljava/lang/Object;
.source "OobHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/oob/OobHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRangingDevice:Landroid/ranging/RangingDevice;

.field private final blacklist mSessionHandle:Landroid/ranging/SessionHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/ranging/oob/OobHandle$1;

    invoke-direct {v0}, Landroid/ranging/oob/OobHandle$1;-><init>()V

    sput-object v0, Landroid/ranging/oob/OobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Landroid/ranging/SessionHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/SessionHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/SessionHandle;

    iput-object v0, p0, Landroid/ranging/oob/OobHandle;->mSessionHandle:Landroid/ranging/SessionHandle;

    .line 54
    const-class v0, Landroid/ranging/RangingDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/RangingDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/RangingDevice;

    iput-object v0, p0, Landroid/ranging/oob/OobHandle;->mRangingDevice:Landroid/ranging/RangingDevice;

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/ranging/SessionHandle;
    .param p2, "device"    # Landroid/ranging/RangingDevice;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/ranging/oob/OobHandle;->mSessionHandle:Landroid/ranging/SessionHandle;

    .line 48
    iput-object p2, p0, Landroid/ranging/oob/OobHandle;->mRangingDevice:Landroid/ranging/RangingDevice;

    .line 49
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

    .line 79
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 80
    :cond_4
    instance-of v1, p1, Landroid/ranging/oob/OobHandle;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    move-object v1, p1

    check-cast v1, Landroid/ranging/oob/OobHandle;

    .line 81
    .local v1, "oobHandle":Landroid/ranging/oob/OobHandle;
    invoke-virtual {p0}, Landroid/ranging/oob/OobHandle;->getSessionHandle()Landroid/ranging/SessionHandle;

    move-result-object v3

    invoke-virtual {v1}, Landroid/ranging/oob/OobHandle;->getSessionHandle()Landroid/ranging/SessionHandle;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 82
    invoke-virtual {p0}, Landroid/ranging/oob/OobHandle;->getRangingDevice()Landroid/ranging/RangingDevice;

    move-result-object v3

    invoke-virtual {v1}, Landroid/ranging/oob/OobHandle;->getRangingDevice()Landroid/ranging/RangingDevice;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    .line 81
    :goto_2a
    return v0

    .line 80
    .end local v1    # "oobHandle":Landroid/ranging/oob/OobHandle;
    :cond_2b
    return v2
.end method

.method public blacklist getRangingDevice()Landroid/ranging/RangingDevice;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/ranging/oob/OobHandle;->mRangingDevice:Landroid/ranging/RangingDevice;

    return-object v0
.end method

.method public blacklist getSessionHandle()Landroid/ranging/SessionHandle;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/ranging/oob/OobHandle;->mSessionHandle:Landroid/ranging/SessionHandle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 87
    invoke-virtual {p0}, Landroid/ranging/oob/OobHandle;->getSessionHandle()Landroid/ranging/SessionHandle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/ranging/oob/OobHandle;->getRangingDevice()Landroid/ranging/RangingDevice;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OobHandle{ mSessionHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/oob/OobHandle;->mSessionHandle:Landroid/ranging/SessionHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangingDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/oob/OobHandle;->mRangingDevice:Landroid/ranging/RangingDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 60
    iget-object v0, p0, Landroid/ranging/oob/OobHandle;->mSessionHandle:Landroid/ranging/SessionHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v0, p0, Landroid/ranging/oob/OobHandle;->mRangingDevice:Landroid/ranging/RangingDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    return-void
.end method
