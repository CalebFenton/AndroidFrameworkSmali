.class public abstract Landroid/net/PlatformVpnProfile;
.super Ljava/lang/Object;
.source "PlatformVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/PlatformVpnProfile$PlatformVpnType;
    }
.end annotation


# static fields
.field public static final blacklist MAX_MTU_DEFAULT:I = 0x550

.field public static final whitelist TYPE_IKEV2_IPSEC_PSK:I = 0x7

.field public static final whitelist TYPE_IKEV2_IPSEC_RSA:I = 0x8

.field public static final whitelist TYPE_IKEV2_IPSEC_USER_PASS:I = 0x6


# instance fields
.field protected final blacklist mExcludeLocalRoutes:Z

.field protected final blacklist mRequiresInternetValidation:Z

.field protected final blacklist mType:I


# direct methods
.method constructor blacklist <init>(IZZ)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "excludeLocalRoutes"    # Z
    .param p3, "requiresValidation"    # Z

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Landroid/net/PlatformVpnProfile;->mType:I

    .line 73
    iput-boolean p2, p0, Landroid/net/PlatformVpnProfile;->mExcludeLocalRoutes:Z

    .line 74
    iput-boolean p3, p0, Landroid/net/PlatformVpnProfile;->mRequiresInternetValidation:Z

    .line 75
    return-void
.end method

.method public static blacklist fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/PlatformVpnProfile;
    .registers 3
    .param p0, "profile"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 130
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v0, :pswitch_data_12

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown VPN Profile type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_d
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/Ikev2VpnProfile;

    move-result-object v0

    return-object v0

    :pswitch_data_12
    .packed-switch 0x6
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public final whitelist areLocalRoutesExcluded()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Landroid/net/PlatformVpnProfile;->mExcludeLocalRoutes:Z

    return v0
.end method

.method public final whitelist getType()I
    .registers 2

    .line 80
    iget v0, p0, Landroid/net/PlatformVpnProfile;->mType:I

    return v0
.end method

.method public final whitelist getTypeString()Ljava/lang/String;
    .registers 2

    .line 110
    iget v0, p0, Landroid/net/PlatformVpnProfile;->mType:I

    packed-switch v0, :pswitch_data_12

    .line 118
    const-string v0, "Unknown VPN profile type"

    return-object v0

    .line 116
    :pswitch_8
    const-string v0, "IKEv2/IPsec RSA Digital Signature"

    return-object v0

    .line 114
    :pswitch_b
    const-string v0, "IKEv2/IPsec Preshared key"

    return-object v0

    .line 112
    :pswitch_e
    const-string v0, "IKEv2/IPsec Username/Password"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x6
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public final whitelist isInternetValidationRequired()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Landroid/net/PlatformVpnProfile;->mRequiresInternetValidation:Z

    return v0
.end method

.method public abstract blacklist toVpnProfile()Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
