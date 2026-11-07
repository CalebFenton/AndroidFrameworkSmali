.class public final Landroid/telephony/euicc/EuiccInfo;
.super Ljava/lang/Object;
.source "EuiccInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/euicc/EuiccInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-r osVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroid/telephony/euicc/EuiccInfo$1;

    invoke-direct {v0}, Landroid/telephony/euicc/EuiccInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/euicc/EuiccInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/EuiccInfo;->osVersion:Ljava/lang/String;

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/euicc/EuiccInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/euicc/EuiccInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "osVersion"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/telephony/euicc/EuiccInfo;->osVersion:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOsVersion()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/telephony/euicc/EuiccInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    iget-object v0, p0, Landroid/telephony/euicc/EuiccInfo;->osVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return-void
.end method
