.class public final Landroid/adservices/common/AdServicesCommonStatesResponse;
.super Ljava/lang/Object;
.source "AdServicesCommonStatesResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/AdServicesCommonStatesResponse$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/AdServicesCommonStatesResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAdServicesCommonStates:Landroid/adservices/common/AdServicesCommonStates;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Landroid/adservices/common/AdServicesCommonStatesResponse$1;

    invoke-direct {v0}, Landroid/adservices/common/AdServicesCommonStatesResponse$1;-><init>()V

    sput-object v0, Landroid/adservices/common/AdServicesCommonStatesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/common/AdServicesCommonStates;)V
    .registers 2
    .param p1, "adservicesCommonStates"    # Landroid/adservices/common/AdServicesCommonStates;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/adservices/common/AdServicesCommonStatesResponse;->mAdServicesCommonStates:Landroid/adservices/common/AdServicesCommonStates;

    .line 42
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/common/AdServicesCommonStates;Landroid/adservices/common/AdServicesCommonStatesResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/AdServicesCommonStatesResponse;-><init>(Landroid/adservices/common/AdServicesCommonStates;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-class v0, Landroid/adservices/common/AdServicesCommonStates;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdServicesCommonStates;

    iput-object v0, p0, Landroid/adservices/common/AdServicesCommonStatesResponse;->mAdServicesCommonStates:Landroid/adservices/common/AdServicesCommonStates;

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/AdServicesCommonStatesResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/AdServicesCommonStatesResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdServicesCommonStates()Landroid/adservices/common/AdServicesCommonStates;
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonStatesResponse;->mAdServicesCommonStates:Landroid/adservices/common/AdServicesCommonStates;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnableAdServicesResponse{mAdservicesCommonStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/AdServicesCommonStatesResponse;->mAdServicesCommonStates:Landroid/adservices/common/AdServicesCommonStates;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonStatesResponse;->mAdServicesCommonStates:Landroid/adservices/common/AdServicesCommonStates;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    return-void
.end method
