.class public Landroid/adservices/common/AdServicesResponse;
.super Ljava/lang/Object;
.source "AdServicesResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/AdServicesResponse$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/AdServicesResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final blacklist mErrorMessage:Ljava/lang/String;

.field protected final blacklist mStatusCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/adservices/common/AdServicesResponse$1;

    invoke-direct {v0}, Landroid/adservices/common/AdServicesResponse$1;-><init>()V

    sput-object v0, Landroid/adservices/common/AdServicesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "statusCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroid/adservices/common/AdServicesResponse;->mStatusCode:I

    .line 67
    iput-object p2, p0, Landroid/adservices/common/AdServicesResponse;->mErrorMessage:Ljava/lang/String;

    .line 68
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/adservices/common/AdServicesResponse$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/common/AdServicesResponse$Builder;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Landroid/adservices/common/AdServicesResponse$Builder;->-$$Nest$fgetmStatusCode(Landroid/adservices/common/AdServicesResponse$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/common/AdServicesResponse;->mStatusCode:I

    .line 55
    invoke-static {p1}, Landroid/adservices/common/AdServicesResponse$Builder;->-$$Nest$fgetmErrorMessage(Landroid/adservices/common/AdServicesResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/AdServicesResponse;->mErrorMessage:Ljava/lang/String;

    .line 56
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/common/AdServicesResponse;->mStatusCode:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/AdServicesResponse;->mErrorMessage:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/adservices/common/AdServicesResponse;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStatusCode()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/adservices/common/AdServicesResponse;->mStatusCode:I

    return v0
.end method

.method public blacklist isSuccess()Z
    .registers 2

    .line 95
    invoke-virtual {p0}, Landroid/adservices/common/AdServicesResponse;->getStatusCode()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget v0, p0, Landroid/adservices/common/AdServicesResponse;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Landroid/adservices/common/AdServicesResponse;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return-void
.end method
