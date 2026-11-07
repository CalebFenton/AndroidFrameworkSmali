.class public final Landroid/adservices/topics/GetTopicsParam;
.super Ljava/lang/Object;
.source "GetTopicsParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/topics/GetTopicsParam$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/topics/GetTopicsParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private final blacklist mRecordObservation:Z

.field private final blacklist mSdkName:Ljava/lang/String;

.field private final blacklist mSdkPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Landroid/adservices/topics/GetTopicsParam$1;

    invoke-direct {v0}, Landroid/adservices/topics/GetTopicsParam$1;-><init>()V

    sput-object v0, Landroid/adservices/topics/GetTopicsParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsParam;->mSdkName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsParam;->mSdkPackageName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsParam;->mAppPackageName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/topics/GetTopicsParam;->mRecordObservation:Z

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/topics/GetTopicsParam-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/topics/GetTopicsParam;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "sdkName"    # Ljava/lang/String;
    .param p2, "sdkPackageName"    # Ljava/lang/String;
    .param p3, "appPackageName"    # Ljava/lang/String;
    .param p4, "recordObservation"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/adservices/topics/GetTopicsParam;->mSdkName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Landroid/adservices/topics/GetTopicsParam;->mSdkPackageName:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Landroid/adservices/topics/GetTopicsParam;->mAppPackageName:Ljava/lang/String;

    .line 46
    iput-boolean p4, p0, Landroid/adservices/topics/GetTopicsParam;->mRecordObservation:Z

    .line 47
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/adservices/topics/GetTopicsParam-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/topics/GetTopicsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsParam;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSdkName()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsParam;->mSdkName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSdkPackageName()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsParam;->mSdkPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist shouldRecordObservation()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Landroid/adservices/topics/GetTopicsParam;->mRecordObservation:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsParam;->mSdkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsParam;->mSdkPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsParam;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Landroid/adservices/topics/GetTopicsParam;->mRecordObservation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 80
    return-void
.end method
