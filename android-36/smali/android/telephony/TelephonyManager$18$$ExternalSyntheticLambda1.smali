.class public final synthetic Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

.field public final synthetic blacklist f$1:[B

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;[BLjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;->f$1:[B

    iput-object p3, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;->f$1:[B

    iget-object v2, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager$18;->lambda$onKeysAvailable$0(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;[BLjava/lang/String;)V

    return-void
.end method
