.class public final synthetic Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

.field public final synthetic blacklist f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda3;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda3;->f$1:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->$r8$lambda$oZTDWYw7aV8U-NU1ymNJOgrYujY(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;)V

    return-void
.end method
