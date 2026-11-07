.class public final synthetic Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/system/virtualmachine/VirtualMachineConfig;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/system/virtualmachine/VirtualMachineConfig;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda3;->f$0:Landroid/system/virtualmachine/VirtualMachineConfig;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda3;->f$0:Landroid/system/virtualmachine/VirtualMachineConfig;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->$r8$lambda$dDURXP83uYIGYK3EDa9MGIKOZ-A(Landroid/system/virtualmachine/VirtualMachineConfig;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method
