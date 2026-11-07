.class public final Landroid/adservices/common/GetAdServicesCommonStatesParams;
.super Ljava/lang/Object;
.source "GetAdServicesCommonStatesParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/GetAdServicesCommonStatesParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private final blacklist mSdkPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/adservices/common/GetAdServicesCommonStatesParams$1;

    invoke-direct {v0}, Landroid/adservices/common/GetAdServicesCommonStatesParams$1;-><init>()V

    sput-object v0, Landroid/adservices/common/GetAdServicesCommonStatesParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams;->mSdkPackageName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams;->mAppPackageName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/GetAdServicesCommonStatesParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/GetAdServicesCommonStatesParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "sdkPackageName"    # Ljava/lang/String;
    .param p2, "appPackageName"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams;->mSdkPackageName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams;->mAppPackageName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/adservices/common/GetAdServicesCommonStatesParams-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/adservices/common/GetAdServicesCommonStatesParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSdkPackageName()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams;->mSdkPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    iget-object v0, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams;->mSdkPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
