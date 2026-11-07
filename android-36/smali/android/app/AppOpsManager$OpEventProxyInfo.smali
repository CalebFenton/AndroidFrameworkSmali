.class public final Landroid/app/AppOpsManager$OpEventProxyInfo;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpEventProxyInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private blacklist mDeviceId:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3923
    new-instance v0, Landroid/app/AppOpsManager$OpEventProxyInfo$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEventProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 3807
    const-string v0, "default:0"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3809
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "deviceId"    # Ljava/lang/String;

    .line 3825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3826
    iput p1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3827
    const-class v0, Landroid/annotation/IntRange;

    iget v2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    const-string v3, "from"

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 3830
    iput-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3831
    iput-object p3, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3832
    if-nez p4, :cond_1a

    const-string v0, "default:0"

    goto :goto_1b

    .line 3833
    :cond_1a
    move-object v0, p4

    :goto_1b
    iput-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    .line 3834
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 3
    .param p1, "orig"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 3841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3842
    iget v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    iput v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3843
    iget-object v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3844
    iget-object v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3845
    iget-object v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    .line 3846
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3906
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 3907
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3908
    .local v1, "uid":I
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move-object v2, v3

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3909
    .local v2, "packageName":Ljava/lang/String;
    :goto_16
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3910
    .local v3, "attributionTag":Ljava/lang/String;
    :goto_1f
    and-int/lit8 v4, v0, 0x8

    if-nez v4, :cond_26

    const-string v4, "default:0"

    goto :goto_2a

    .line 3911
    :cond_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    :goto_2a
    nop

    .line 3912
    .local v4, "deviceId":Ljava/lang/String;
    iput v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3913
    const-class v5, Landroid/annotation/IntRange;

    iget v7, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    const-string v8, "from"

    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 3916
    iput-object v2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3917
    iput-object v3, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3918
    iput-object v4, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    .line 3920
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3897
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 3869
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceId()Ljava/lang/String;
    .registers 2

    .line 3876
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 3861
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 3853
    iget v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    return v0
.end method

.method public blacklist reinit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "deviceId"    # Ljava/lang/String;

    .line 3770
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3771
    iput-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3772
    iput-object p3, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3773
    iput-object p4, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    .line 3774
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3884
    const/4 v0, 0x0

    .line 3885
    .local v0, "flg":B
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 3886
    :cond_8
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 3887
    :cond_f
    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 3888
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 3889
    iget v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3890
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3891
    :cond_23
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3892
    :cond_2c
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3893
    return-void
.end method
