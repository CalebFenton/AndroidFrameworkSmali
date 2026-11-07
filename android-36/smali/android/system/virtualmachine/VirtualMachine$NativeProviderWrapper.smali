.class Landroid/system/virtualmachine/VirtualMachine$NativeProviderWrapper;
.super Ljava/lang/Object;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeProviderWrapper"
.end annotation


# instance fields
.field private blacklist mMoreLifetime:Landroid/os/ParcelFileDescriptor;

.field private blacklist mProvider:Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;


# direct methods
.method public constructor blacklist <init>(Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;)V
    .registers 3
    .param p1, "provider"    # Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;

    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2000
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$NativeProviderWrapper;->mProvider:Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;

    .line 2003
    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$NativeProviderWrapper;->mMoreLifetime:Landroid/os/ParcelFileDescriptor;

    .line 2006
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$NativeProviderWrapper;->mProvider:Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;

    .line 2007
    return-void
.end method


# virtual methods
.method blacklist connect()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 2010
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$NativeProviderWrapper;->mProvider:Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;

    invoke-interface {v0}, Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;->addConnection()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$NativeProviderWrapper;->mMoreLifetime:Landroid/os/ParcelFileDescriptor;

    .line 2011
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$NativeProviderWrapper;->mMoreLifetime:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    return v0
.end method
