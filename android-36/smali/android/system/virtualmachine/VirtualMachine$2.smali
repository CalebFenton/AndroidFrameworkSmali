.class Landroid/system/virtualmachine/VirtualMachine$2;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/system/virtualmachine/VirtualMachine;->connectToVsockServer(J)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/system/virtualmachine/VirtualMachine;

.field final synthetic blacklist val$port:J


# direct methods
.method constructor blacklist <init>(Landroid/system/virtualmachine/VirtualMachine;J)V
    .registers 4
    .param p1, "this$0"    # Landroid/system/virtualmachine/VirtualMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2034
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$2;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    iput-wide p2, p0, Landroid/system/virtualmachine/VirtualMachine$2;->val$port:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist addConnection()Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 2037
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$2;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    iget-wide v1, p0, Landroid/system/virtualmachine/VirtualMachine$2;->val$port:J

    invoke-virtual {v0, v1, v2}, Landroid/system/virtualmachine/VirtualMachine;->connectVsock(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method
