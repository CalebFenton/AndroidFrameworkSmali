.class public final Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;
.super Ljava/lang/Object;
.source "VirtualMachineCustomImageConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Partition"
.end annotation


# instance fields
.field public final blacklist guid:Ljava/lang/String;

.field public final blacklist imagePath:Ljava/lang/String;

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist writable:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "imagePath"    # Ljava/lang/String;
    .param p3, "writable"    # Z
    .param p4, "guid"    # Ljava/lang/String;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->name:Ljava/lang/String;

    .line 465
    iput-object p2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->imagePath:Ljava/lang/String;

    .line 466
    iput-boolean p3, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->writable:Z

    .line 467
    iput-object p4, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->guid:Ljava/lang/String;

    .line 468
    return-void
.end method
