.class public final Landroid/safetycenter/SafetySourceErrorDetails;
.super Ljava/lang/Object;
.source "SafetySourceErrorDetails.java"

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
            "Landroid/safetycenter/SafetySourceErrorDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSafetyEvent:Landroid/safetycenter/SafetyEvent;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/safetycenter/SafetySourceErrorDetails$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetySourceErrorDetails$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetySourceErrorDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/safetycenter/SafetyEvent;)V
    .registers 3
    .param p1, "safetyEvent"    # Landroid/safetycenter/SafetyEvent;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/safetycenter/SafetyEvent;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceErrorDetails;->mSafetyEvent:Landroid/safetycenter/SafetyEvent;

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 70
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 71
    :cond_4
    instance-of v0, p1, Landroid/safetycenter/SafetySourceErrorDetails;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 72
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/safetycenter/SafetySourceErrorDetails;

    .line 73
    .local v0, "that":Landroid/safetycenter/SafetySourceErrorDetails;
    iget-object v1, p0, Landroid/safetycenter/SafetySourceErrorDetails;->mSafetyEvent:Landroid/safetycenter/SafetyEvent;

    iget-object v2, v0, Landroid/safetycenter/SafetySourceErrorDetails;->mSafetyEvent:Landroid/safetycenter/SafetyEvent;

    invoke-virtual {v1, v2}, Landroid/safetycenter/SafetyEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getSafetyEvent()Landroid/safetycenter/SafetyEvent;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/safetycenter/SafetySourceErrorDetails;->mSafetyEvent:Landroid/safetycenter/SafetyEvent;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/safetycenter/SafetySourceErrorDetails;->mSafetyEvent:Landroid/safetycenter/SafetyEvent;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetySourceErrorDetails{mSafetyEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceErrorDetails;->mSafetyEvent:Landroid/safetycenter/SafetyEvent;

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

    .line 93
    iget-object v0, p0, Landroid/safetycenter/SafetySourceErrorDetails;->mSafetyEvent:Landroid/safetycenter/SafetyEvent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 94
    return-void
.end method
