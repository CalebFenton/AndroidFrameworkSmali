.class Landroid/net/wifi/WifiManager$16;
.super Landroid/net/wifi/IInterfaceCreationInfoCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager;->reportCreateInterfaceImpact(IZLjava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$resultCallback:Ljava/util/function/BiConsumer;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 12034
    iput-object p2, p0, Landroid/net/wifi/WifiManager$16;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$16;->val$resultCallback:Ljava/util/function/BiConsumer;

    invoke-direct {p0}, Landroid/net/wifi/IInterfaceCreationInfoCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResults$0(Ljava/util/function/BiConsumer;ZLjava/util/Set;)V
    .registers 4
    .param p0, "resultCallback"    # Ljava/util/function/BiConsumer;
    .param p1, "canCreate"    # Z
    .param p2, "finalSet"    # Ljava/util/Set;

    .line 12068
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onResults(Z[I[Ljava/lang/String;)V
    .registers 11
    .param p1, "canCreate"    # Z
    .param p2, "interfacesToDelete"    # [I
    .param p3, "packagesForInterfaces"    # [Ljava/lang/String;

    .line 12038
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12039
    if-nez p2, :cond_7

    if-nez p3, :cond_13

    :cond_7
    if-eqz p2, :cond_b

    if-eqz p3, :cond_13

    :cond_b
    if-eqz p1, :cond_48

    if-eqz p2, :cond_13

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_48

    .line 12044
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportImpactToCreateIfaceRequest: Invalid callback parameters - canCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interfacesToDelete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12048
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", worksourcesForInterfaces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12050
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12044
    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12051
    return-void

    .line 12055
    :cond_48
    if-eqz p1, :cond_53

    array-length v0, p2

    if-lez v0, :cond_53

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    goto :goto_57

    .line 12056
    :cond_53
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_57
    nop

    .line 12057
    .local v0, "finalSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/wifi/WifiManager$InterfaceCreationImpact;>;"
    if-eqz p1, :cond_81

    .line 12058
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5b
    array-length v2, p2

    if-ge v1, v2, :cond_81

    .line 12059
    new-instance v2, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;

    aget v3, p2, v1

    .line 12061
    aget-object v4, p3, v1

    if-nez v4, :cond_6b

    .line 12062
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    goto :goto_78

    .line 12063
    :cond_6b
    new-instance v4, Landroid/util/ArraySet;

    aget-object v5, p3, v1

    .line 12065
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    :goto_78
    invoke-direct {v2, v3, v4}, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;-><init>(ILjava/util/Set;)V

    .line 12059
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12058
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 12068
    .end local v1    # "i":I
    :cond_81
    iget-object v1, p0, Landroid/net/wifi/WifiManager$16;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$16;->val$resultCallback:Ljava/util/function/BiConsumer;

    new-instance v3, Landroid/net/wifi/WifiManager$16$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p1, v0}, Landroid/net/wifi/WifiManager$16$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;ZLjava/util/Set;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12069
    return-void
.end method
