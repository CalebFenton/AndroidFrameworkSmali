.class public final synthetic Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/system/virtualmachine/VirtualMachine$OpenPtyCallback;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;

.field public final synthetic blacklist f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final blacklist apply(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[B)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/system/virtualmachine/VirtualMachine;->lambda$createPtyConsole$2(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[B)V

    return-void
.end method
