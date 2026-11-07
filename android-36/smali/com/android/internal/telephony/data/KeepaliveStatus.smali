.class public Lcom/android/internal/telephony/data/KeepaliveStatus;
.super Ljava/lang/Object;
.source "KeepaliveStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/data/KeepaliveStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ERROR_NONE:I = 0x0

.field public static final blacklist ERROR_NO_RESOURCES:I = 0x2

.field public static final blacklist ERROR_UNKNOWN:I = 0x3

.field public static final blacklist ERROR_UNSUPPORTED:I = 0x1

.field public static final blacklist INVALID_HANDLE:I = 0x7fffffff

.field public static final blacklist STATUS_ACTIVE:I = 0x0

.field public static final blacklist STATUS_INACTIVE:I = 0x1

.field public static final blacklist STATUS_PENDING:I = 0x2


# instance fields
.field public final blacklist errorCode:I

.field public final blacklist sessionHandle:I

.field public final blacklist statusCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Lcom/android/internal/telephony/data/KeepaliveStatus$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/KeepaliveStatus$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/data/KeepaliveStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 64
    iput v0, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->sessionHandle:I

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->statusCode:I

    .line 66
    iput p1, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->errorCode:I

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->sessionHandle:I

    .line 71
    iput p2, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->statusCode:I

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->errorCode:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->errorCode:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->sessionHandle:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->statusCode:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/data/KeepaliveStatus-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 78
    iget v0, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->errorCode:I

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->sessionHandle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->statusCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 78
    const-string v0, "{errorCode=%d, sessionHandle=%d, statusCode=%d}"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 90
    iget p2, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget p2, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget p0, p0, Lcom/android/internal/telephony/data/KeepaliveStatus;->statusCode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
