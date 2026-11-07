.class public final Landroid/uwb/SessionHandle;
.super Ljava/lang/Object;
.source "SessionHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/uwb/SessionHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPid:I

.field private final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Landroid/uwb/SessionHandle$1;

    invoke-direct {v0}, Landroid/uwb/SessionHandle$1;-><init>()V

    sput-object v0, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/AttributionSource;I)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "pid"    # I

    .line 35
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/uwb/SessionHandle;-><init>(ILjava/lang/String;II)V

    .line 36
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;II)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/uwb/SessionHandle;->mId:I

    .line 40
    iput-object p2, p0, Landroid/uwb/SessionHandle;->mPackageName:Ljava/lang/String;

    .line 41
    iput p3, p0, Landroid/uwb/SessionHandle;->mUid:I

    .line 42
    iput p4, p0, Landroid/uwb/SessionHandle;->mPid:I

    .line 43
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/uwb/SessionHandle;->mId:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/uwb/SessionHandle;->mPackageName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/uwb/SessionHandle;->mUid:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/uwb/SessionHandle;->mPid:I

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 96
    return v0

    .line 99
    :cond_4
    instance-of v1, p1, Landroid/uwb/SessionHandle;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 100
    move-object v1, p1

    check-cast v1, Landroid/uwb/SessionHandle;

    .line 101
    .local v1, "other":Landroid/uwb/SessionHandle;
    iget v3, p0, Landroid/uwb/SessionHandle;->mId:I

    iget v4, v1, Landroid/uwb/SessionHandle;->mId:I

    if-ne v3, v4, :cond_29

    iget-object v3, p0, Landroid/uwb/SessionHandle;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/uwb/SessionHandle;->mPackageName:Ljava/lang/String;

    .line 102
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget v3, p0, Landroid/uwb/SessionHandle;->mUid:I

    iget v4, v1, Landroid/uwb/SessionHandle;->mUid:I

    if-ne v3, v4, :cond_29

    iget v3, p0, Landroid/uwb/SessionHandle;->mPid:I

    iget v4, v1, Landroid/uwb/SessionHandle;->mPid:I

    if-ne v3, v4, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    .line 101
    :goto_2a
    return v0

    .line 106
    .end local v1    # "other":Landroid/uwb/SessionHandle;
    :cond_2b
    return v2
.end method

.method public blacklist getId()I
    .registers 2

    .line 65
    iget v0, p0, Landroid/uwb/SessionHandle;->mId:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/uwb/SessionHandle;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPid()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/uwb/SessionHandle;->mPid:I

    return v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 73
    iget v0, p0, Landroid/uwb/SessionHandle;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 111
    iget v0, p0, Landroid/uwb/SessionHandle;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/SessionHandle;->mPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/uwb/SessionHandle;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/uwb/SessionHandle;->mPid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionHandle [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/uwb/SessionHandle;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package-name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/SessionHandle;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/uwb/SessionHandle;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/uwb/SessionHandle;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 87
    iget v0, p0, Landroid/uwb/SessionHandle;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Landroid/uwb/SessionHandle;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Landroid/uwb/SessionHandle;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/uwb/SessionHandle;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
