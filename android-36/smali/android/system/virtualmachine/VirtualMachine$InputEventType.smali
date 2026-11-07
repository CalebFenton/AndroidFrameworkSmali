.class final enum Landroid/system/virtualmachine/VirtualMachine$InputEventType;
.super Ljava/lang/Enum;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InputEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/system/virtualmachine/VirtualMachine$InputEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/system/virtualmachine/VirtualMachine$InputEventType;

.field public static final enum blacklist MOUSE:Landroid/system/virtualmachine/VirtualMachine$InputEventType;

.field public static final enum blacklist TOUCH:Landroid/system/virtualmachine/VirtualMachine$InputEventType;

.field public static final enum blacklist TRACKPAD:Landroid/system/virtualmachine/VirtualMachine$InputEventType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/system/virtualmachine/VirtualMachine$InputEventType;
    .registers 3

    .line 179
    sget-object v0, Landroid/system/virtualmachine/VirtualMachine$InputEventType;->TOUCH:Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    sget-object v1, Landroid/system/virtualmachine/VirtualMachine$InputEventType;->MOUSE:Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    sget-object v2, Landroid/system/virtualmachine/VirtualMachine$InputEventType;->TRACKPAD:Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    filled-new-array {v0, v1, v2}, [Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 180
    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    const-string v1, "TOUCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/system/virtualmachine/VirtualMachine$InputEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/system/virtualmachine/VirtualMachine$InputEventType;->TOUCH:Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    .line 181
    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    const-string v1, "MOUSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/system/virtualmachine/VirtualMachine$InputEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/system/virtualmachine/VirtualMachine$InputEventType;->MOUSE:Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    .line 182
    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    const-string v1, "TRACKPAD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/system/virtualmachine/VirtualMachine$InputEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/system/virtualmachine/VirtualMachine$InputEventType;->TRACKPAD:Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    .line 179
    invoke-static {}, Landroid/system/virtualmachine/VirtualMachine$InputEventType;->$values()[Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    move-result-object v0

    sput-object v0, Landroid/system/virtualmachine/VirtualMachine$InputEventType;->$VALUES:[Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine$InputEventType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 179
    const-class v0, Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/system/virtualmachine/VirtualMachine$InputEventType;
    .registers 1

    .line 179
    sget-object v0, Landroid/system/virtualmachine/VirtualMachine$InputEventType;->$VALUES:[Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    invoke-virtual {v0}, [Landroid/system/virtualmachine/VirtualMachine$InputEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    return-object v0
.end method
