.class final Landroid/system/virtualmachine/VirtualMachine$InputEvent;
.super Ljava/lang/Record;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputEvent"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "type",
        "code",
        "value"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        S,
        S,
        I
    }
.end annotation


# instance fields
.field private final blacklist code:S

.field private final blacklist type:S

.field private final blacklist value:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    if-eqz v0, :cond_1a

    check-cast p1, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    iget-short v0, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->type:S

    iget-short v1, p1, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->type:S

    if-ne v0, v1, :cond_1a

    iget-short v0, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->code:S

    iget-short v1, p1, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->code:S

    if-ne v0, v1, :cond_1a

    iget v0, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->value:I

    iget p1, p1, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->value:I

    if-ne v0, p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 4

    iget-short v0, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->type:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget-short v1, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->code:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iget v2, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcode(Landroid/system/virtualmachine/VirtualMachine$InputEvent;)S
    .registers 1

    iget-short p0, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->code:S

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettype(Landroid/system/virtualmachine/VirtualMachine$InputEvent;)S
    .registers 1

    iget-short p0, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->type:S

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalue(Landroid/system/virtualmachine/VirtualMachine$InputEvent;)I
    .registers 1

    iget p0, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->value:I

    return p0
.end method

.method private constructor blacklist <init>(SSI)V
    .registers 4
    .param p1, "type"    # S
    .param p2, "code"    # S
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "code",
            "value"
        }
    .end annotation

    .line 952
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-short p1, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->type:S

    iput-short p2, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->code:S

    iput p3, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->value:I

    return-void
.end method

.method synthetic constructor blacklist <init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSI)V

    return-void
.end method


# virtual methods
.method public blacklist code()S
    .registers 2

    .line 952
    iget-short v0, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->code:S

    return v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 952
    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 952
    iget-short v0, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->type:S

    iget-short v1, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->code:S

    iget v2, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->value:I

    invoke-static {v0, v1, v2}, Landroid/system/virtualmachine/VirtualMachine$InputEvent$$ExternalSyntheticRecord0;->m(III)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 952
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    const-string v2, "type;code;value"

    invoke-static {v0, v1, v2}, Landroid/system/virtualmachine/VirtualMachine$InputEvent$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist type()S
    .registers 2

    .line 952
    iget-short v0, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->type:S

    return v0
.end method

.method public blacklist value()I
    .registers 2

    .line 952
    iget v0, p0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->value:I

    return v0
.end method
