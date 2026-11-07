.class public final synthetic Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

.field public final synthetic blacklist f$1:Landroid/content/ComponentName;

.field public final synthetic blacklist f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda1;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda1;->f$2:Landroid/os/IBinder;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->$r8$lambda$nmXDzP_KEiPbj8bLK-h8tkBkccI(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method
