.class public final enum Landroid/os/DdmSyncState$Stage;
.super Ljava/lang/Enum;
.source "DdmSyncState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DdmSyncState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/DdmSyncState$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/os/DdmSyncState$Stage;

.field public static final enum blacklist Attach:Landroid/os/DdmSyncState$Stage;

.field public static final enum blacklist Bind:Landroid/os/DdmSyncState$Stage;

.field public static final enum blacklist Boot:Landroid/os/DdmSyncState$Stage;

.field public static final enum blacklist Debugger:Landroid/os/DdmSyncState$Stage;

.field public static final enum blacklist Named:Landroid/os/DdmSyncState$Stage;

.field public static final enum blacklist Running:Landroid/os/DdmSyncState$Stage;


# instance fields
.field final blacklist mLabel:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/os/DdmSyncState$Stage;
    .registers 6

    .line 34
    sget-object v0, Landroid/os/DdmSyncState$Stage;->Boot:Landroid/os/DdmSyncState$Stage;

    sget-object v1, Landroid/os/DdmSyncState$Stage;->Attach:Landroid/os/DdmSyncState$Stage;

    sget-object v2, Landroid/os/DdmSyncState$Stage;->Bind:Landroid/os/DdmSyncState$Stage;

    sget-object v3, Landroid/os/DdmSyncState$Stage;->Named:Landroid/os/DdmSyncState$Stage;

    sget-object v4, Landroid/os/DdmSyncState$Stage;->Debugger:Landroid/os/DdmSyncState$Stage;

    sget-object v5, Landroid/os/DdmSyncState$Stage;->Running:Landroid/os/DdmSyncState$Stage;

    filled-new-array/range {v0 .. v5}, [Landroid/os/DdmSyncState$Stage;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 36
    new-instance v0, Landroid/os/DdmSyncState$Stage;

    const/4 v1, 0x0

    const-string v2, "BOOT"

    const-string v3, "Boot"

    invoke-direct {v0, v3, v1, v2}, Landroid/os/DdmSyncState$Stage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/DdmSyncState$Stage;->Boot:Landroid/os/DdmSyncState$Stage;

    .line 39
    new-instance v0, Landroid/os/DdmSyncState$Stage;

    const/4 v1, 0x1

    const-string v2, "ATCH"

    const-string v3, "Attach"

    invoke-direct {v0, v3, v1, v2}, Landroid/os/DdmSyncState$Stage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/DdmSyncState$Stage;->Attach:Landroid/os/DdmSyncState$Stage;

    .line 42
    new-instance v0, Landroid/os/DdmSyncState$Stage;

    const/4 v1, 0x2

    const-string v2, "BIND"

    const-string v3, "Bind"

    invoke-direct {v0, v3, v1, v2}, Landroid/os/DdmSyncState$Stage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/DdmSyncState$Stage;->Bind:Landroid/os/DdmSyncState$Stage;

    .line 45
    new-instance v0, Landroid/os/DdmSyncState$Stage;

    const/4 v1, 0x3

    const-string v2, "NAMD"

    const-string v3, "Named"

    invoke-direct {v0, v3, v1, v2}, Landroid/os/DdmSyncState$Stage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/DdmSyncState$Stage;->Named:Landroid/os/DdmSyncState$Stage;

    .line 48
    new-instance v0, Landroid/os/DdmSyncState$Stage;

    const/4 v1, 0x4

    const-string v2, "DEBG"

    const-string v3, "Debugger"

    invoke-direct {v0, v3, v1, v2}, Landroid/os/DdmSyncState$Stage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/DdmSyncState$Stage;->Debugger:Landroid/os/DdmSyncState$Stage;

    .line 51
    new-instance v0, Landroid/os/DdmSyncState$Stage;

    const/4 v1, 0x5

    const-string v2, "A_GO"

    const-string v3, "Running"

    invoke-direct {v0, v3, v1, v2}, Landroid/os/DdmSyncState$Stage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/DdmSyncState$Stage;->Running:Landroid/os/DdmSyncState$Stage;

    .line 34
    invoke-static {}, Landroid/os/DdmSyncState$Stage;->$values()[Landroid/os/DdmSyncState$Stage;

    move-result-object v0

    sput-object v0, Landroid/os/DdmSyncState$Stage;->$VALUES:[Landroid/os/DdmSyncState$Stage;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p3, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_d

    .line 60
    iput-object p3, p0, Landroid/os/DdmSyncState$Stage;->mLabel:Ljava/lang/String;

    .line 61
    return-void

    .line 57
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad stage id \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\'. Must be four letters"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/os/DdmSyncState$Stage;
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

    .line 34
    const-class v0, Landroid/os/DdmSyncState$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/DdmSyncState$Stage;

    return-object v0
.end method

.method public static blacklist values()[Landroid/os/DdmSyncState$Stage;
    .registers 1

    .line 34
    sget-object v0, Landroid/os/DdmSyncState$Stage;->$VALUES:[Landroid/os/DdmSyncState$Stage;

    invoke-virtual {v0}, [Landroid/os/DdmSyncState$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/DdmSyncState$Stage;

    return-object v0
.end method


# virtual methods
.method public blacklist toInt()I
    .registers 5

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_14

    .line 70
    shl-int/lit8 v2, v0, 0x8

    iget-object v3, p0, Landroid/os/DdmSyncState$Stage;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 72
    .end local v1    # "i":I
    :cond_14
    return v0
.end method
