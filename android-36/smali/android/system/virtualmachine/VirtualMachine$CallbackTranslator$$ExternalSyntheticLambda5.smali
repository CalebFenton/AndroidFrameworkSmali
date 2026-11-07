.class public final synthetic Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda5;->f$0:Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;

    iput p2, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda5;->f$0:Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;

    iget v1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Landroid/system/virtualmachine/VirtualMachineCallback;

    invoke-static {v0, v1, p1}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->$r8$lambda$adRnD1Ra59nc_je1RvMd9APKSfQ(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;ILandroid/system/virtualmachine/VirtualMachineCallback;)V

    return-void
.end method
