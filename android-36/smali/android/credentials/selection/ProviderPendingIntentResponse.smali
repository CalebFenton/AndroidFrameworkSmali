.class public final Landroid/credentials/selection/ProviderPendingIntentResponse;
.super Ljava/lang/Object;
.source "ProviderPendingIntentResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/ProviderPendingIntentResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mResultCode:I

.field private final blacklist mResultData:Landroid/content/Intent;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/credentials/selection/ProviderPendingIntentResponse$1;

    invoke-direct {v0}, Landroid/credentials/selection/ProviderPendingIntentResponse$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/ProviderPendingIntentResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/content/Intent;)V
    .registers 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/content/Intent;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultCode:I

    .line 66
    iput-object p2, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultData:Landroid/content/Intent;

    .line 67
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultCode:I

    .line 71
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultData:Landroid/content/Intent;

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/selection/ProviderPendingIntentResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getResultCode()I
    .registers 2

    .line 104
    iget v0, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultCode:I

    return v0
.end method

.method public whitelist getResultData()Landroid/content/Intent;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget v0, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultData:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 96
    return-void
.end method
