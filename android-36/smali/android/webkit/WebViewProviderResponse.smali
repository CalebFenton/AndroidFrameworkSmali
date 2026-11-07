.class public final Landroid/webkit/WebViewProviderResponse;
.super Ljava/lang/Object;
.source "WebViewProviderResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewProviderResponse$WebViewProviderStatus;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/webkit/WebViewProviderResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STATUS_FAILED_LISTING_WEBVIEW_PACKAGES:I = 0x4

.field public static final blacklist STATUS_FAILED_OTHER:I = 0xb

.field public static final blacklist STATUS_FAILED_WAITING_FOR_RELRO:I = 0x3

.field public static final blacklist STATUS_SUCCESS:I


# instance fields
.field public final greylist packageInfo:Landroid/content/pm/PackageInfo;

.field public final greylist-max-o status:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/webkit/WebViewProviderResponse$1;

    invoke-direct {v0}, Landroid/webkit/WebViewProviderResponse$1;-><init>()V

    sput-object v0, Landroid/webkit/WebViewProviderResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageInfo;I)V
    .registers 3
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "status"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 58
    iput p2, p0, Landroid/webkit/WebViewProviderResponse;->status:I

    .line 59
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewProviderResponse;->status:I

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/webkit/WebViewProviderResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    iget-object v0, p0, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 86
    iget v0, p0, Landroid/webkit/WebViewProviderResponse;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
