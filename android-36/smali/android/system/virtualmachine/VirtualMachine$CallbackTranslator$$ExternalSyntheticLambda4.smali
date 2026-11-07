.class public final synthetic Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda4;->f$0:Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda4;->f$0:Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;

    check-cast p1, Landroid/system/virtualmachine/VirtualMachineCallback;

    invoke-static {v0, p1}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->$r8$lambda$Iw_HfCXZuKEl_75vEOlQSGI-IRU(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;Landroid/system/virtualmachine/VirtualMachineCallback;)V

    return-void
.end method
