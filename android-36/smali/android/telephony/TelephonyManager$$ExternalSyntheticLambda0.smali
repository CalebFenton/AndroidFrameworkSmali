.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->lambda$bootstrapAuthenticationRequest$24(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V

    return-void
.end method
