.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyManager;

.field public final synthetic blacklist f$1:Ljava/nio/file/Path;

.field public final synthetic blacklist f$2:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyManager;Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;->f$1:Ljava/nio/file/Path;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;->f$2:Landroid/os/OutcomeReceiver;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    iput-object p5, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;->f$4:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;->f$1:Ljava/nio/file/Path;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;->f$2:Landroid/os/OutcomeReceiver;

    iget-object v3, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;->f$4:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/telephony/TelephonyManager;->$r8$lambda$u03PMP6iKZdBMAnqo06SCV9YlyU(Landroid/telephony/TelephonyManager;Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    return-void
.end method
