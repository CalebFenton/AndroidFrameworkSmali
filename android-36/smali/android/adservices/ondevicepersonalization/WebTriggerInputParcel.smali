.class public final Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;
.super Ljava/lang/Object;
.source "WebTriggerInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mData:[B

.field private blacklist mDestinationUrl:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 138
    new-instance v0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;[B)V
    .registers 7
    .param p1, "destinationUrl"    # Landroid/net/Uri;
    .param p2, "appPackageName"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mDestinationUrl:Landroid/net/Uri;

    .line 62
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mDestinationUrl:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 64
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mAppPackageName:Ljava/lang/String;

    .line 65
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mAppPackageName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 67
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mData:[B

    .line 68
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mData:[B

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 121
    .local v0, "destinationUrl":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "appPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 124
    .local v2, "data":[B
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mDestinationUrl:Landroid/net/Uri;

    .line 125
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mDestinationUrl:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 127
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mAppPackageName:Ljava/lang/String;

    .line 128
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mAppPackageName:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 130
    iput-object v2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mData:[B

    .line 131
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mData:[B

    invoke-static {v3, v5, v4}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getData()[B
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mData:[B

    return-object v0
.end method

.method public blacklist getDestinationUrl()Landroid/net/Uri;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mDestinationUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mDestinationUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 105
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 107
    return-void
.end method
