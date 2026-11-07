.class public final Landroid/net/QosSession;
.super Ljava/lang/Object;
.source "QosSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/QosSession$QosSessionType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/QosSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_EPS_BEARER:I = 0x1

.field public static final whitelist TYPE_NR_BEARER:I = 0x2


# instance fields
.field private final blacklist mSessionId:I

.field private final blacklist mSessionType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 122
    new-instance v0, Landroid/net/QosSession$1;

    invoke-direct {v0}, Landroid/net/QosSession$1;-><init>()V

    sput-object v0, Landroid/net/QosSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "sessionType"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Landroid/net/QosSession;->mSessionId:I

    .line 94
    iput p2, p0, Landroid/net/QosSession;->mSessionType:I

    .line 95
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/QosSession;->mSessionId:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/QosSession;->mSessionType:I

    .line 119
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/QosSession-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/QosSession;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSessionId()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/net/QosSession;->mSessionId:I

    return v0
.end method

.method public whitelist getSessionType()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/net/QosSession;->mSessionType:I

    return v0
.end method

.method public whitelist getUniqueId()J
    .registers 5

    .line 60
    iget v0, p0, Landroid/net/QosSession;->mSessionType:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/net/QosSession;->mSessionId:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QosSession{mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/QosSession;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSessionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/QosSession;->mSessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 143
    iget v0, p0, Landroid/net/QosSession;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Landroid/net/QosSession;->mSessionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return-void
.end method
