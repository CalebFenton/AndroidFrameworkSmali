.class public final enum Landroid/os/AsyncTask$Status;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/AsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/os/AsyncTask$Status;

.field public static final enum whitelist FINISHED:Landroid/os/AsyncTask$Status;

.field public static final enum whitelist PENDING:Landroid/os/AsyncTask$Status;

.field public static final enum whitelist RUNNING:Landroid/os/AsyncTask$Status;


# direct methods
.method private static synthetic blacklist $values()[Landroid/os/AsyncTask$Status;
    .registers 3

    .line 327
    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    filled-new-array {v0, v1, v2}, [Landroid/os/AsyncTask$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 331
    new-instance v0, Landroid/os/AsyncTask$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    .line 335
    new-instance v0, Landroid/os/AsyncTask$Status;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    .line 339
    new-instance v0, Landroid/os/AsyncTask$Status;

    const-string v1, "FINISHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/os/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 327
    invoke-static {}, Landroid/os/AsyncTask$Status;->$values()[Landroid/os/AsyncTask$Status;

    move-result-object v0

    sput-object v0, Landroid/os/AsyncTask$Status;->$VALUES:[Landroid/os/AsyncTask$Status;

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

    .line 327
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/os/AsyncTask$Status;
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

    .line 327
    const-class v0, Landroid/os/AsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask$Status;

    return-object v0
.end method

.method public static whitelist values()[Landroid/os/AsyncTask$Status;
    .registers 1

    .line 327
    sget-object v0, Landroid/os/AsyncTask$Status;->$VALUES:[Landroid/os/AsyncTask$Status;

    invoke-virtual {v0}, [Landroid/os/AsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/AsyncTask$Status;

    return-object v0
.end method
