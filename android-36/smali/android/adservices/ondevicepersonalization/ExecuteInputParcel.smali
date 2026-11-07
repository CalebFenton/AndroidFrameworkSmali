.class public final Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;
.super Ljava/lang/Object;
.source "ExecuteInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mAppPackageName:Ljava/lang/String;

.field blacklist mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 126
    new-instance v0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mAppPackageName:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 114
    .local v1, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "appPackageName":Ljava/lang/String;
    and-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_18

    move-object v3, v0

    goto :goto_20

    :cond_18
    sget-object v3, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 117
    .local v3, "serializedAppParams":Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;
    :goto_20
    iput-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mAppPackageName:Ljava/lang/String;

    .line 118
    const-class v4, Landroid/annotation/NonNull;

    iget-object v5, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mAppPackageName:Ljava/lang/String;

    invoke-static {v4, v0, v5}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 120
    iput-object v3, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 123
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;)V
    .registers 6
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "serializedAppParams"    # Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mAppPackageName:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 63
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mAppPackageName:Ljava/lang/String;

    .line 64
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mAppPackageName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 66
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 69
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSerializedAppParams()Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "flg":B
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 97
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 98
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 100
    :cond_19
    return-void
.end method
