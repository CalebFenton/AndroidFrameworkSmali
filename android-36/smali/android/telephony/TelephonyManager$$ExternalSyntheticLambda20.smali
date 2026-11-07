.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/io/InputStream;

.field public final synthetic blacklist f$1:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$2:Landroid/os/ParcelFileDescriptor;

.field public final synthetic blacklist f$3:Ljava/io/OutputStream;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;->f$0:Ljava/io/InputStream;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;->f$1:Landroid/os/OutcomeReceiver;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;->f$2:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;->f$3:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;->f$0:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;->f$1:Landroid/os/OutcomeReceiver;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;->f$2:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;->f$3:Ljava/io/OutputStream;

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->lambda$uploadCallComposerPicture$3(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    return-void
.end method
