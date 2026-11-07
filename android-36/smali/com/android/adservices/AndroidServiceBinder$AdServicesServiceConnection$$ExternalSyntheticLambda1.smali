.class public final synthetic Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;

.field public final synthetic blacklist f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;Landroid/os/IBinder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;

    iput-object p2, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;

    iget-object v1, p0, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;->$r8$lambda$Wi7SPW_pNqYgo7DUfHoLQr1mCGI(Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;Landroid/os/IBinder;)V

    return-void
.end method
