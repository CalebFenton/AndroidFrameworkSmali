.class public Landroid/net/ip/IpManager$ProvisioningConfiguration;
.super Ljava/lang/Object;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProvisioningConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MS:I = 0x8ca0


# instance fields
.field mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field mEnableIPv4:Z

.field mEnableIPv6:Z

.field mProvisioningTimeoutMs:I

.field mRequestedPreDhcpActionMs:I

.field mStaticIpConfig:Landroid/net/StaticIpConfiguration;

.field mUsingIpReachabilityMonitor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 324
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    #@6
    .line 325
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    #@8
    .line 326
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    #@a
    .line 330
    const v0, 0x8ca0

    #@d
    iput v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    #@f
    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V
    .locals 1
    .param p1, "other"    # Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 324
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    #@6
    .line 325
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    #@8
    .line 326
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    #@a
    .line 330
    const v0, 0x8ca0

    #@d
    iput v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    #@f
    .line 335
    iget-boolean v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    #@11
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    #@13
    .line 336
    iget-boolean v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    #@15
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    #@17
    .line 337
    iget-boolean v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    #@19
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    #@1b
    .line 338
    iget v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    #@1d
    iput v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    #@1f
    .line 339
    iget-object v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    #@21
    iput-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    #@23
    .line 340
    iget-object v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@25
    iput-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@27
    .line 341
    iget v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    #@29
    iput v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    #@2b
    .line 334
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 346
    new-instance v0, Ljava/util/StringJoiner;

    #@2
    const-string/jumbo v1, ", "

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {p0}, Landroid/net/ip/IpManager$ProvisioningConfiguration;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, "{"

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    const-string/jumbo v3, "}"

    #@24
    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    #@27
    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "mEnableIPv4: "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    iget-boolean v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 346
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    #@40
    move-result-object v0

    #@41
    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v2, "mEnableIPv6: "

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    iget-boolean v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    .line 346
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    #@5a
    move-result-object v0

    #@5b
    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v2, "mUsingIpReachabilityMonitor: "

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    iget-boolean v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    .line 346
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    #@74
    move-result-object v0

    #@75
    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v2, "mRequestedPreDhcpActionMs: "

    #@7d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    iget v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    .line 346
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    #@8e
    move-result-object v0

    #@8f
    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v2, "mStaticIpConfig: "

    #@97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    iget-object v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    #@9d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v1

    #@a5
    .line 346
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    #@a8
    move-result-object v0

    #@a9
    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v2, "mApfCapabilities: "

    #@b1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v1

    #@b5
    iget-object v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@b7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v1

    #@bb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v1

    #@bf
    .line 346
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    #@c2
    move-result-object v0

    #@c3
    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v2, "mProvisioningTimeoutMs: "

    #@cb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v1

    #@cf
    iget v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    #@d1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v1

    #@d5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v1

    #@d9
    .line 346
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    #@dc
    move-result-object v0

    #@dd
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    #@e0
    move-result-object v0

    #@e1
    return-object v0
.end method
