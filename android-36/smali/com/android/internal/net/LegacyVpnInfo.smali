.class public Lcom/android/internal/net/LegacyVpnInfo;
.super Ljava/lang/Object;
.source "LegacyVpnInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/net/LegacyVpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o STATE_CONNECTED:I = 0x3

.field public static final greylist-max-o STATE_CONNECTING:I = 0x2

.field public static final greylist-max-o STATE_DISCONNECTED:I = 0x0

.field public static final greylist-max-o STATE_FAILED:I = 0x5

.field public static final greylist-max-o STATE_INITIALIZING:I = 0x1

.field public static final greylist-max-o STATE_TIMEOUT:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "LegacyVpnInfo"


# instance fields
.field public greylist-max-o intent:Landroid/app/PendingIntent;

.field public greylist key:Ljava/lang/String;

.field public greylist state:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo$1;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/net/LegacyVpnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 50
    return-void
.end method

.method public static blacklist stateFromNetworkInfo(Landroid/net/NetworkInfo$DetailedState;)I
    .registers 4
    .param p0, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .line 87
    sget-object v0, Lcom/android/internal/net/LegacyVpnInfo$2;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_32

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ; treating as disconnected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LegacyVpnInfo"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v1

    .line 95
    :pswitch_2b
    const/4 v0, 0x5

    return v0

    .line 93
    :pswitch_2d
    return v1

    .line 91
    :pswitch_2e
    const/4 v0, 0x3

    return v0

    .line 89
    :pswitch_30
    const/4 v0, 0x2

    return v0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2e
        :pswitch_2d
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 59
    iget-object v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    return-void
.end method
