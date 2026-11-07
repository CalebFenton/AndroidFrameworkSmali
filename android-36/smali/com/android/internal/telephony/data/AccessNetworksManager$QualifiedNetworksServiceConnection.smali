.class final Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;
.super Ljava/lang/Object;
.source "AccessNetworksManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/AccessNetworksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QualifiedNetworksServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/data/AccessNetworksManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 203
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p2}, Landroid/telephony/data/IQualifiedNetworksService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IQualifiedNetworksService;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fputmIQualifiedNetworksService(Lcom/android/internal/telephony/data/AccessNetworksManager;Landroid/telephony/data/IQualifiedNetworksService;)V

    .line 204
    new-instance p1, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;

    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/data/AccessNetworksManager-IA;)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mgetQualifiedNetworksServicePackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fputmLastBoundPackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 209
    :try_start_1b
    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 210
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmIQualifiedNetworksService(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/telephony/data/IQualifiedNetworksService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    new-instance v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;

    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/data/AccessNetworksManager-IA;)V

    invoke-interface {p1, p2, v0}, Landroid/telephony/data/IQualifiedNetworksService;->createNetworkAvailabilityProvider(ILandroid/telephony/data/IQualifiedNetworksServiceCallback;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception p1

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remote exception. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 220
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fputmTargetBindingPackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    return-void
.end method
