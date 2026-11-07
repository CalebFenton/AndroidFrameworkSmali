.class Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryManagementCallbacks"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/system/virtualmachine/VirtualMachine;


# direct methods
.method private constructor blacklist <init>(Landroid/system/virtualmachine/VirtualMachine;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 270
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/system/virtualmachine/VirtualMachine;Landroid/system/virtualmachine/VirtualMachine-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;-><init>(Landroid/system/virtualmachine/VirtualMachine;)V

    return-void
.end method


# virtual methods
.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 272
    return-void
.end method

.method public whitelist onLowMemory()V
    .registers 1

    .line 275
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .registers 4
    .param p1, "level"    # I

    .line 280
    const/16 v0, 0xa

    .line 282
    .local v0, "percent":I
    const/16 v1, 0x14

    if-lt p1, v1, :cond_8

    .line 283
    const/16 v0, 0x1e

    .line 286
    :cond_8
    const/16 v1, 0x28

    if-lt p1, v1, :cond_e

    .line 288
    const/16 v0, 0x32

    .line 291
    :cond_e
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-virtual {v1, v0}, Landroid/system/virtualmachine/VirtualMachine;->setMemoryBalloonByPercent(I)V

    .line 292
    return-void
.end method
