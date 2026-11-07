.class public final Landroid/net/connectivity/org/chromium/base/UnguessableToken;
.super Landroid/net/connectivity/org/chromium/base/TokenBase;
.source "UnguessableToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "This is a simple value object."
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/connectivity/org/chromium/base/UnguessableToken;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCounterForTesting:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/net/connectivity/org/chromium/base/UnguessableToken$1;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/UnguessableToken$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/UnguessableToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JJ)V
    .registers 5
    .param p1, "high"    # J
    .param p3, "low"    # J

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/connectivity/org/chromium/base/TokenBase;-><init>(JJ)V

    .line 34
    return-void
.end method

.method synthetic constructor blacklist <init>(JJLandroid/net/connectivity/org/chromium/base/UnguessableToken-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/connectivity/org/chromium/base/UnguessableToken;-><init>(JJ)V

    return-void
.end method

.method public static blacklist createForTesting()Landroid/net/connectivity/org/chromium/base/UnguessableToken;
    .registers 5

    .line 28
    new-instance v0, Landroid/net/connectivity/org/chromium/base/UnguessableToken;

    sget v1, Landroid/net/connectivity/org/chromium/base/UnguessableToken;->sCounterForTesting:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/net/connectivity/org/chromium/base/UnguessableToken;->sCounterForTesting:I

    int-to-long v1, v1

    sget v3, Landroid/net/connectivity/org/chromium/base/UnguessableToken;->sCounterForTesting:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Landroid/net/connectivity/org/chromium/base/UnguessableToken;->sCounterForTesting:I

    int-to-long v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/connectivity/org/chromium/base/UnguessableToken;-><init>(JJ)V

    return-object v0
.end method

.method private blacklist parcelAndUnparcelForTesting()Landroid/net/connectivity/org/chromium/base/UnguessableToken;
    .registers 3

    .line 77
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 78
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/org/chromium/base/UnguessableToken;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    sget-object v1, Landroid/net/connectivity/org/chromium/base/UnguessableToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/UnguessableToken;

    .line 83
    .local v1, "token":Landroid/net/connectivity/org/chromium/base/UnguessableToken;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 85
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHighForTesting()J
    .registers 3

    .line 67
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/UnguessableToken;->mHigh:J

    return-wide v0
.end method

.method public blacklist getLowForTesting()J
    .registers 3

    .line 71
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/UnguessableToken;->mLow:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 92
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 43
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/UnguessableToken;->mHigh:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/UnguessableToken;->mLow:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    return-void
.end method
