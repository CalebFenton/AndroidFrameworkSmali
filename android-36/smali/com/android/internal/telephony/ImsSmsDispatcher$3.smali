.class Lcom/android/internal/telephony/ImsSmsDispatcher$3;
.super Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
.source "ImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsSmsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 142
    :try_start_7
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmIsSmsCapable(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V

    .line 144
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method
