.class public final Lcom/android/internal/logging/InstanceId;
.super Ljava/lang/Object;
.source "InstanceId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/logging/InstanceId;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist INSTANCE_ID_MAX:I = 0x100000


# instance fields
.field private final blacklist mId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Lcom/android/internal/logging/InstanceId$1;

    invoke-direct {v0}, Lcom/android/internal/logging/InstanceId$1;-><init>()V

    sput-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 4
    .param p1, "id"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    .line 40
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/logging/InstanceId;-><init>(I)V

    .line 44
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/logging/InstanceId-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/logging/InstanceId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist fakeInstanceId(I)Lcom/android/internal/logging/InstanceId;
    .registers 2
    .param p0, "id"    # I

    .line 59
    new-instance v0, Lcom/android/internal/logging/InstanceId;

    invoke-direct {v0, p0}, Lcom/android/internal/logging/InstanceId;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 69
    instance-of v0, p1, Lcom/android/internal/logging/InstanceId;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 70
    return v1

    .line 72
    :cond_6
    iget v0, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/logging/InstanceId;

    iget v2, v2, Lcom/android/internal/logging/InstanceId;->mId:I

    if-ne v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public blacklist getId()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget v0, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void
.end method
