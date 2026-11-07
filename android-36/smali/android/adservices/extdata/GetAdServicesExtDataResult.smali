.class public final Landroid/adservices/extdata/GetAdServicesExtDataResult;
.super Landroid/adservices/common/AdServicesResponse;
.source "GetAdServicesExtDataResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/extdata/GetAdServicesExtDataResult$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/extdata/GetAdServicesExtDataResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdServicesExtDataParams:Landroid/adservices/extdata/AdServicesExtDataParams;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Landroid/adservices/extdata/GetAdServicesExtDataResult$1;

    invoke-direct {v0}, Landroid/adservices/extdata/GetAdServicesExtDataResult$1;-><init>()V

    sput-object v0, Landroid/adservices/extdata/GetAdServicesExtDataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Landroid/adservices/extdata/AdServicesExtDataParams;)V
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "adServicesExtDataParams"    # Landroid/adservices/extdata/AdServicesExtDataParams;

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/adservices/common/AdServicesResponse;-><init>(ILjava/lang/String;)V

    .line 41
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/extdata/AdServicesExtDataParams;

    iput-object v0, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult;->mAdServicesExtDataParams:Landroid/adservices/extdata/AdServicesExtDataParams;

    .line 42
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Landroid/adservices/extdata/AdServicesExtDataParams;Landroid/adservices/extdata/GetAdServicesExtDataResult-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/adservices/extdata/GetAdServicesExtDataResult;-><init>(ILjava/lang/String;Landroid/adservices/extdata/AdServicesExtDataParams;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0, p1}, Landroid/adservices/common/AdServicesResponse;-><init>(Landroid/os/Parcel;)V

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-class v0, Landroid/adservices/extdata/AdServicesExtDataParams;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/adservices/extdata/AdServicesExtDataParams;

    iput-object v0, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult;->mAdServicesExtDataParams:Landroid/adservices/extdata/AdServicesExtDataParams;

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/extdata/GetAdServicesExtDataResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/extdata/GetAdServicesExtDataResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdServicesExtDataParams()Landroid/adservices/extdata/AdServicesExtDataParams;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult;->mAdServicesExtDataParams:Landroid/adservices/extdata/AdServicesExtDataParams;

    return-object v0
.end method

.method public blacklist getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 103
    iget v0, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult;->mStatusCode:I

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult;->mErrorMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult;->mAdServicesExtDataParams:Landroid/adservices/extdata/AdServicesExtDataParams;

    invoke-virtual {v2}, Landroid/adservices/extdata/AdServicesExtDataParams;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 103
    const-string v1, "GetAdServicesExtIntDataResult{mResultCode=%d, mErrorMessage=%s, mAdServicesExtDataParams=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    iget v0, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult;->mAdServicesExtDataParams:Landroid/adservices/extdata/AdServicesExtDataParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    return-void
.end method
