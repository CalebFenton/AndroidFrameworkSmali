.class public final Landroid/credentials/selection/DisabledProviderData;
.super Landroid/credentials/selection/ProviderData;
.source "DisabledProviderData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Landroid/credentials/selection/DisabledProviderData$1;

    invoke-direct {v0}, Landroid/credentials/selection/DisabledProviderData$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/DisabledProviderData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0, p1}, Landroid/credentials/selection/ProviderData;-><init>(Landroid/os/Parcel;)V

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/selection/DisabledProviderData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/selection/DisabledProviderData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "providerFlattenedComponentName"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Landroid/credentials/selection/ProviderData;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist toDisabledProviderInfo()Landroid/credentials/selection/DisabledProviderInfo;
    .registers 3

    .line 48
    new-instance v0, Landroid/credentials/selection/DisabledProviderInfo;

    invoke-virtual {p0}, Landroid/credentials/selection/DisabledProviderData;->getProviderFlattenedComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/credentials/selection/DisabledProviderInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 57
    invoke-super {p0, p1, p2}, Landroid/credentials/selection/ProviderData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    return-void
.end method
