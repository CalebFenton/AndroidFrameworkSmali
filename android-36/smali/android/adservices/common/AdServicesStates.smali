.class public final Landroid/adservices/common/AdServicesStates;
.super Ljava/lang/Object;
.source "AdServicesStates.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/AdServicesStates$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/AdServicesStates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsAdIdEnabled:Z

.field private final blacklist mIsAdultAccount:Z

.field private final blacklist mIsPrivacySandboxUiEnabled:Z

.field private final blacklist mIsPrivacySandboxUiRequest:Z

.field private final blacklist mIsU18Account:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroid/adservices/common/AdServicesStates$1;

    invoke-direct {v0}, Landroid/adservices/common/AdServicesStates$1;-><init>()V

    sput-object v0, Landroid/adservices/common/AdServicesStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsPrivacySandboxUiEnabled:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsPrivacySandboxUiRequest:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsU18Account:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsAdultAccount:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsAdIdEnabled:Z

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/AdServicesStates-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/AdServicesStates;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(ZZZZZ)V
    .registers 6
    .param p1, "isPrivacySandboxUiEnabled"    # Z
    .param p2, "isPrivacySandboxUiRequest"    # Z
    .param p3, "isU18Account"    # Z
    .param p4, "isAdultAccount"    # Z
    .param p5, "isAdIdEnabled"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p1, p0, Landroid/adservices/common/AdServicesStates;->mIsPrivacySandboxUiEnabled:Z

    .line 60
    iput-boolean p2, p0, Landroid/adservices/common/AdServicesStates;->mIsPrivacySandboxUiRequest:Z

    .line 61
    iput-boolean p3, p0, Landroid/adservices/common/AdServicesStates;->mIsU18Account:Z

    .line 62
    iput-boolean p4, p0, Landroid/adservices/common/AdServicesStates;->mIsAdultAccount:Z

    .line 63
    iput-boolean p5, p0, Landroid/adservices/common/AdServicesStates;->mIsAdIdEnabled:Z

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZZZZLandroid/adservices/common/AdServicesStates-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/adservices/common/AdServicesStates;-><init>(ZZZZZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isAdIdEnabled()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsAdIdEnabled:Z

    return v0
.end method

.method public whitelist isAdultAccount()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsAdultAccount:Z

    return v0
.end method

.method public whitelist isPrivacySandboxUiEnabled()Z
    .registers 2

    .line 91
    iget-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsPrivacySandboxUiEnabled:Z

    return v0
.end method

.method public whitelist isPrivacySandboxUiRequest()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsPrivacySandboxUiRequest:Z

    return v0
.end method

.method public whitelist isU18Account()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsU18Account:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    iget-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsPrivacySandboxUiEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 82
    iget-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsPrivacySandboxUiRequest:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 83
    iget-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsU18Account:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 84
    iget-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsAdultAccount:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 85
    iget-boolean v0, p0, Landroid/adservices/common/AdServicesStates;->mIsAdIdEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 86
    return-void
.end method
