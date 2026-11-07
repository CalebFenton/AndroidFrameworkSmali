.class public final synthetic Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic blacklist f$0:Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda0;->f$0:Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;

    return-void
.end method


# virtual methods
.method public final whitelist binderDied()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda0;->f$0:Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;

    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->$r8$lambda$PW29A6v05yoaNy3alkjVDvFKcRA(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;)V

    return-void
.end method
