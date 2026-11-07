.class public final Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;
.super Ljava/lang/Object;
.source "InferenceOutputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mData:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 127
    new-instance v0, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/InferenceOutput;)V
    .registers 3
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/InferenceOutput;

    .line 46
    nop

    .line 47
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/InferenceOutput;->getData()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_d

    .line 48
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/InferenceOutput;->getData()[B

    move-result-object v0

    goto :goto_15

    .line 49
    :cond_d
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/InferenceOutput;->getDataOutputs()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayUtil;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v0

    .line 46
    :goto_15
    invoke-direct {p0, v0}, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;-><init>([B)V

    .line 50
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 120
    .local v0, "data":[B
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;->mData:[B

    .line 121
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;->mData:[B

    invoke-static {v1, v2, v3}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 5
    .param p1, "data"    # [B

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;->mData:[B

    .line 77
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;->mData:[B

    invoke-static {v0, v1, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getData()[B
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;->mData:[B

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 102
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 103
    return-void
.end method
