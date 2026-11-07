.class public final Landroid/safetycenter/SafetyCenterErrorDetails;
.super Ljava/lang/Object;
.source "SafetyCenterErrorDetails.java"

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
            "Landroid/safetycenter/SafetyCenterErrorDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mErrorMessage:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroid/safetycenter/SafetyCenterErrorDetails$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetyCenterErrorDetails$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetyCenterErrorDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/CharSequence;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterErrorDetails;->mErrorMessage:Ljava/lang/CharSequence;

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 73
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 74
    :cond_4
    instance-of v0, p1, Landroid/safetycenter/SafetyCenterErrorDetails;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 75
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/safetycenter/SafetyCenterErrorDetails;

    .line 76
    .local v0, "that":Landroid/safetycenter/SafetyCenterErrorDetails;
    iget-object v1, p0, Landroid/safetycenter/SafetyCenterErrorDetails;->mErrorMessage:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/safetycenter/SafetyCenterErrorDetails;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public whitelist getErrorMessage()Ljava/lang/CharSequence;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterErrorDetails;->mErrorMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterErrorDetails;->mErrorMessage:Ljava/lang/CharSequence;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetyCenterErrorDetails{mErrorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterErrorDetails;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterErrorDetails;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 97
    return-void
.end method
