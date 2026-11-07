.class public final Landroid/adservices/measurement/StatusParam;
.super Ljava/lang/Object;
.source "StatusParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/StatusParam$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/measurement/StatusParam;",
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

    .line 48
    new-instance v0, Landroid/adservices/measurement/StatusParam$1;

    invoke-direct {v0}, Landroid/adservices/measurement/StatusParam$1;-><init>()V

    sput-object v0, Landroid/adservices/measurement/StatusParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/measurement/StatusParam$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/measurement/StatusParam$Builder;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Landroid/adservices/measurement/StatusParam$Builder;->-$$Nest$fgetmAppPackageName(Landroid/adservices/measurement/StatusParam$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/StatusParam;->mAppPackageName:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Landroid/adservices/measurement/StatusParam$Builder;->-$$Nest$fgetmSdkPackageName(Landroid/adservices/measurement/StatusParam$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/StatusParam;->mSdkPackageName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/measurement/StatusParam$Builder;Landroid/adservices/measurement/StatusParam-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/StatusParam;-><init>(Landroid/adservices/measurement/StatusParam$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/StatusParam;->mAppPackageName:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/StatusParam;->mSdkPackageName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/measurement/StatusParam-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/StatusParam;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/adservices/measurement/StatusParam;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSdkPackageName()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/adservices/measurement/StatusParam;->mSdkPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Landroid/adservices/measurement/StatusParam;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Landroid/adservices/measurement/StatusParam;->mSdkPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return-void
.end method
