.class public Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;
.super Ljava/lang/Object;
.source "ExecuteOptionsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist DEFAULT:Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;


# instance fields
.field private final blacklist mMaxIntValue:I

.field private final blacklist mOutputType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->DEFAULT:Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;

    .line 127
    new-instance v0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 46
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;-><init>(II)V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 6
    .param p1, "outputType"    # I
    .param p2, "maxIntValue"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->mOutputType:I

    .line 73
    const-class v0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec$OutputType;

    const/4 v1, 0x0

    iget v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->mOutputType:I

    invoke-static {v0, v1, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 75
    iput p2, p0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->mMaxIntValue:I

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;)V
    .registers 4
    .param p1, "options"    # Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    .line 37
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;->getOutputType()I

    move-result v0

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;->getMaxIntValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;-><init>(II)V

    .line 38
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .local v0, "outputType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .local v1, "maxIntValue":I
    iput v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->mOutputType:I

    .line 119
    const-class v2, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec$OutputType;

    const/4 v3, 0x0

    iget v4, p0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->mOutputType:I

    invoke-static {v2, v3, v4}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 121
    iput v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->mMaxIntValue:I

    .line 124
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxIntValue()I
    .registers 2

    .line 89
    iget v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->mMaxIntValue:I

    return v0
.end method

.method public blacklist getOutputType()I
    .registers 2

    .line 83
    iget v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->mOutputType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->mOutputType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->mMaxIntValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void
.end method
