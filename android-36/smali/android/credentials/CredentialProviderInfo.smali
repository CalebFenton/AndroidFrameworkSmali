.class public final Landroid/credentials/CredentialProviderInfo;
.super Ljava/lang/Object;
.source "CredentialProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/CredentialProviderInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsEnabled:Z

.field private final blacklist mIsPrimary:Z

.field private final blacklist mIsSystemProvider:Z

.field private final blacklist mOverrideLabel:Ljava/lang/CharSequence;

.field private final blacklist mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private blacklist mSettingsActivity:Ljava/lang/CharSequence;

.field private blacklist mSettingsSubtitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 202
    new-instance v0, Landroid/credentials/CredentialProviderInfo$1;

    invoke-direct {v0}, Landroid/credentials/CredentialProviderInfo$1;-><init>()V

    sput-object v0, Landroid/credentials/CredentialProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/credentials/CredentialProviderInfo$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/credentials/CredentialProviderInfo$Builder;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mCapabilities:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mSettingsSubtitle:Ljava/lang/CharSequence;

    .line 47
    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mSettingsActivity:Ljava/lang/CharSequence;

    .line 58
    invoke-static {p1}, Landroid/credentials/CredentialProviderInfo$Builder;->-$$Nest$fgetmServiceInfo(Landroid/credentials/CredentialProviderInfo$Builder;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 59
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mCapabilities:Ljava/util/List;

    invoke-static {p1}, Landroid/credentials/CredentialProviderInfo$Builder;->-$$Nest$fgetmCapabilities(Landroid/credentials/CredentialProviderInfo$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-static {p1}, Landroid/credentials/CredentialProviderInfo$Builder;->-$$Nest$fgetmIsSystemProvider(Landroid/credentials/CredentialProviderInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/CredentialProviderInfo;->mIsSystemProvider:Z

    .line 61
    invoke-static {p1}, Landroid/credentials/CredentialProviderInfo$Builder;->-$$Nest$fgetmSettingsSubtitle(Landroid/credentials/CredentialProviderInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mSettingsSubtitle:Ljava/lang/CharSequence;

    .line 62
    invoke-static {p1}, Landroid/credentials/CredentialProviderInfo$Builder;->-$$Nest$fgetmIsEnabled(Landroid/credentials/CredentialProviderInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/CredentialProviderInfo;->mIsEnabled:Z

    .line 63
    invoke-static {p1}, Landroid/credentials/CredentialProviderInfo$Builder;->-$$Nest$fgetmIsPrimary(Landroid/credentials/CredentialProviderInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/CredentialProviderInfo;->mIsPrimary:Z

    .line 64
    invoke-static {p1}, Landroid/credentials/CredentialProviderInfo$Builder;->-$$Nest$fgetmOverrideLabel(Landroid/credentials/CredentialProviderInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mOverrideLabel:Ljava/lang/CharSequence;

    .line 65
    invoke-static {p1}, Landroid/credentials/CredentialProviderInfo$Builder;->-$$Nest$fgetmSettingsActivity(Landroid/credentials/CredentialProviderInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mSettingsActivity:Ljava/lang/CharSequence;

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/credentials/CredentialProviderInfo$Builder;Landroid/credentials/CredentialProviderInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/CredentialProviderInfo;-><init>(Landroid/credentials/CredentialProviderInfo$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mCapabilities:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mSettingsSubtitle:Ljava/lang/CharSequence;

    .line 47
    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mSettingsActivity:Ljava/lang/CharSequence;

    .line 192
    sget-object v0, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/CredentialProviderInfo;->mIsSystemProvider:Z

    .line 194
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/CredentialProviderInfo;->mIsEnabled:Z

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/CredentialProviderInfo;->mIsPrimary:Z

    .line 197
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mOverrideLabel:Ljava/lang/CharSequence;

    .line 198
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mSettingsSubtitle:Ljava/lang/CharSequence;

    .line 199
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mSettingsActivity:Ljava/lang/CharSequence;

    .line 200
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/CredentialProviderInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/CredentialProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCapabilities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mCapabilities:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mOverrideLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 95
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mOverrideLabel:Ljava/lang/CharSequence;

    return-object v0

    .line 97
    :cond_7
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getServiceIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public blacklist getSettingsActivity()Ljava/lang/CharSequence;
    .registers 2

    .line 133
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->settingsActivityEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_8
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mSettingsActivity:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getSettingsSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mSettingsSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist hasCapability(Ljava/lang/String;)Z
    .registers 3
    .param p1, "credentialType"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mCapabilities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Landroid/credentials/CredentialProviderInfo;->mIsEnabled:Z

    return v0
.end method

.method public blacklist isPrimary()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Landroid/credentials/CredentialProviderInfo;->mIsPrimary:Z

    return v0
.end method

.method public blacklist isSystemProvider()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Landroid/credentials/CredentialProviderInfo;->mIsSystemProvider:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CredentialProviderInfo {serviceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CredentialProviderInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSystemProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/credentials/CredentialProviderInfo;->mIsSystemProvider:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/credentials/CredentialProviderInfo;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPrimary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/credentials/CredentialProviderInfo;->mIsPrimary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overrideLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CredentialProviderInfo;->mOverrideLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settingsSubtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CredentialProviderInfo;->mSettingsSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settingsActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CredentialProviderInfo;->mSettingsActivity:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CredentialProviderInfo;->mCapabilities:Ljava/util/List;

    .line 187
    const-string v2, ","

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 148
    iget-boolean v0, p0, Landroid/credentials/CredentialProviderInfo;->mIsSystemProvider:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 149
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 150
    iget-boolean v0, p0, Landroid/credentials/CredentialProviderInfo;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 151
    iget-boolean v0, p0, Landroid/credentials/CredentialProviderInfo;->mIsPrimary:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 152
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mOverrideLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 153
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mSettingsSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 154
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo;->mSettingsActivity:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 155
    return-void
.end method
