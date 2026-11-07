.class public final Landroid/app/sdksandbox/LoadSdkException;
.super Ljava/lang/Exception;
.source "LoadSdkException.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/sdksandbox/LoadSdkException;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtraInformation:Landroid/os/Bundle;

.field private final blacklist mLoadSdkErrorCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Landroid/app/sdksandbox/LoadSdkException$1;

    invoke-direct {v0}, Landroid/app/sdksandbox/LoadSdkException$1;-><init>()V

    sput-object v0, Landroid/app/sdksandbox/LoadSdkException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "loadSdkErrorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/sdksandbox/LoadSdkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "loadSdkErrorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/sdksandbox/LoadSdkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Throwable;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "loadSdkErrorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "extraInfo"    # Landroid/os/Bundle;

    .line 91
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    iput p1, p0, Landroid/app/sdksandbox/LoadSdkException;->mLoadSdkErrorCode:I

    .line 93
    iput-object p4, p0, Landroid/app/sdksandbox/LoadSdkException;->mExtraInformation:Landroid/os/Bundle;

    .line 94
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Throwable;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "extraInfo"    # Landroid/os/Bundle;

    .line 39
    const/16 v0, 0x66

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/app/sdksandbox/LoadSdkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Landroid/os/Bundle;)V

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtraInformation()Landroid/os/Bundle;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/app/sdksandbox/LoadSdkException;->mExtraInformation:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getLoadSdkErrorCode()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/app/sdksandbox/LoadSdkException;->mLoadSdkErrorCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 140
    iget v0, p0, Landroid/app/sdksandbox/LoadSdkException;->mLoadSdkErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    invoke-virtual {p0}, Landroid/app/sdksandbox/LoadSdkException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Landroid/app/sdksandbox/LoadSdkException;->mExtraInformation:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method
