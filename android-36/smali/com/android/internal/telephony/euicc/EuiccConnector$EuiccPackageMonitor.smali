.class Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;
.super Lcom/android/internal/telephony/PackageChangeReceiver;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EuiccPackageMonitor"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1259
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/telephony/PackageChangeReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method

.method private blacklist sendPackageChange(Ljava/lang/String;Z)V
    .registers 3

    .line 1290
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    if-eqz p2, :cond_5

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onHandleForceStop([Ljava/lang/String;Z)V
    .registers 6

    if-eqz p2, :cond_f

    .line 1283
    array-length p2, p1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p2, :cond_f

    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 1284
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    return-void
.end method

.method public blacklist onPackageAdded(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 1262
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public blacklist onPackageModified(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1277
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public blacklist onPackageRemoved(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 1267
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public blacklist onPackageUpdateFinished(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 1272
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    return-void
.end method
