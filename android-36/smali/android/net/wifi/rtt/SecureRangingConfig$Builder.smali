.class public final Landroid/net/wifi/rtt/SecureRangingConfig$Builder;
.super Ljava/lang/Object;
.source "SecureRangingConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/SecureRangingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEnableRangingFrameProtection:Z

.field private blacklist mEnableSecureHeLtf:Z

.field private final blacklist mPasnConfig:Landroid/net/wifi/rtt/PasnConfig;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnableRangingFrameProtection(Landroid/net/wifi/rtt/SecureRangingConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;->mEnableRangingFrameProtection:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableSecureHeLtf(Landroid/net/wifi/rtt/SecureRangingConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;->mEnableSecureHeLtf:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPasnConfig(Landroid/net/wifi/rtt/SecureRangingConfig$Builder;)Landroid/net/wifi/rtt/PasnConfig;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;->mPasnConfig:Landroid/net/wifi/rtt/PasnConfig;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/rtt/PasnConfig;)V
    .registers 3
    .param p1, "pasnConfig"    # Landroid/net/wifi/rtt/PasnConfig;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;->mEnableSecureHeLtf:Z

    .line 147
    iput-boolean v0, p0, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;->mEnableRangingFrameProtection:Z

    .line 157
    const-string v0, "pasnConfig must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    iput-object p1, p0, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;->mPasnConfig:Landroid/net/wifi/rtt/PasnConfig;

    .line 159
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/rtt/SecureRangingConfig;
    .registers 3

    .line 198
    new-instance v0, Landroid/net/wifi/rtt/SecureRangingConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/rtt/SecureRangingConfig;-><init>(Landroid/net/wifi/rtt/SecureRangingConfig$Builder;Landroid/net/wifi/rtt/SecureRangingConfig-IA;)V

    return-object v0
.end method

.method public whitelist setRangingFrameProtectionEnabled(Z)Landroid/net/wifi/rtt/SecureRangingConfig$Builder;
    .registers 2
    .param p1, "enableRangingFrameProtection"    # Z

    .line 185
    iput-boolean p1, p0, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;->mEnableRangingFrameProtection:Z

    .line 186
    return-object p0
.end method

.method public whitelist setSecureHeLtfEnabled(Z)Landroid/net/wifi/rtt/SecureRangingConfig$Builder;
    .registers 2
    .param p1, "enableSecureHeLtf"    # Z

    .line 171
    iput-boolean p1, p0, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;->mEnableSecureHeLtf:Z

    .line 172
    return-object p0
.end method
