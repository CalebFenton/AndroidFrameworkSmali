.class public final Landroid/net/wifi/rtt/SecureRangingConfig;
.super Ljava/lang/Object;
.source "SecureRangingConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/SecureRangingConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/SecureRangingConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEnableRangingFrameProtection:Z

.field private final blacklist mEnableSecureHeLtf:Z

.field private final blacklist mPasnConfig:Landroid/net/wifi/rtt/PasnConfig;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Landroid/net/wifi/rtt/SecureRangingConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/SecureRangingConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/SecureRangingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/rtt/SecureRangingConfig$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/net/wifi/rtt/SecureRangingConfig$Builder;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;->-$$Nest$fgetmEnableSecureHeLtf(Landroid/net/wifi/rtt/SecureRangingConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableSecureHeLtf:Z

    .line 71
    invoke-static {p1}, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;->-$$Nest$fgetmEnableRangingFrameProtection(Landroid/net/wifi/rtt/SecureRangingConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableRangingFrameProtection:Z

    .line 72
    invoke-static {p1}, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;->-$$Nest$fgetmPasnConfig(Landroid/net/wifi/rtt/SecureRangingConfig$Builder;)Landroid/net/wifi/rtt/PasnConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mPasnConfig:Landroid/net/wifi/rtt/PasnConfig;

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/rtt/SecureRangingConfig$Builder;Landroid/net/wifi/rtt/SecureRangingConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/SecureRangingConfig;-><init>(Landroid/net/wifi/rtt/SecureRangingConfig$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableSecureHeLtf:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    iput-boolean v1, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableRangingFrameProtection:Z

    .line 51
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-class v0, Landroid/net/wifi/rtt/PasnConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/wifi/rtt/PasnConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/rtt/PasnConfig;

    goto :goto_3b

    .line 52
    :cond_2f
    const-class v0, Landroid/net/wifi/rtt/PasnConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/rtt/PasnConfig;

    :goto_3b
    iput-object v0, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mPasnConfig:Landroid/net/wifi/rtt/PasnConfig;

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/rtt/SecureRangingConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/SecureRangingConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(ZZLandroid/net/wifi/rtt/PasnConfig;)V
    .registers 5
    .param p1, "enableSecureHeLtf"    # Z
    .param p2, "enableRangingFrameProtection"    # Z
    .param p3, "pasnConfig"    # Landroid/net/wifi/rtt/PasnConfig;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "pasnConfig cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    iput-boolean p1, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableSecureHeLtf:Z

    .line 44
    iput-boolean p2, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableRangingFrameProtection:Z

    .line 45
    iput-object p3, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mPasnConfig:Landroid/net/wifi/rtt/PasnConfig;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 128
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 129
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/rtt/SecureRangingConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    move-object v1, p1

    check-cast v1, Landroid/net/wifi/rtt/SecureRangingConfig;

    .line 130
    .local v1, "that":Landroid/net/wifi/rtt/SecureRangingConfig;
    iget-boolean v3, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableSecureHeLtf:Z

    iget-boolean v4, v1, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableSecureHeLtf:Z

    if-ne v3, v4, :cond_23

    iget-boolean v3, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableRangingFrameProtection:Z

    iget-boolean v4, v1, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableRangingFrameProtection:Z

    if-ne v3, v4, :cond_23

    iget-object v3, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mPasnConfig:Landroid/net/wifi/rtt/PasnConfig;

    iget-object v4, v1, Landroid/net/wifi/rtt/SecureRangingConfig;->mPasnConfig:Landroid/net/wifi/rtt/PasnConfig;

    .line 132
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_24

    :cond_23
    move v0, v2

    .line 130
    :goto_24
    return v0

    .line 129
    .end local v1    # "that":Landroid/net/wifi/rtt/SecureRangingConfig;
    :cond_25
    return v2
.end method

.method public whitelist getPasnConfig()Landroid/net/wifi/rtt/PasnConfig;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mPasnConfig:Landroid/net/wifi/rtt/PasnConfig;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 138
    iget-boolean v0, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableSecureHeLtf:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableRangingFrameProtection:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mPasnConfig:Landroid/net/wifi/rtt/PasnConfig;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isRangingFrameProtectionEnabled()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableRangingFrameProtection:Z

    return v0
.end method

.method public whitelist isSecureHeLtfEnabled()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableSecureHeLtf:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureRangingConfig{mEnableSecureHeLtf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableSecureHeLtf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnableRangingProtection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableRangingFrameProtection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPasnConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mPasnConfig:Landroid/net/wifi/rtt/PasnConfig;

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

    .line 112
    iget-boolean v0, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableSecureHeLtf:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 113
    iget-boolean v0, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mEnableRangingFrameProtection:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 114
    iget-object v0, p0, Landroid/net/wifi/rtt/SecureRangingConfig;->mPasnConfig:Landroid/net/wifi/rtt/PasnConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 115
    return-void
.end method
