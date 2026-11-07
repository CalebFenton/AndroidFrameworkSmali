.class public final enum Llibcore/io/IoTracker$Mode;
.super Ljava/lang/Enum;
.source "IoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/IoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Llibcore/io/IoTracker$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Llibcore/io/IoTracker$Mode;

.field public static final enum blacklist READ:Llibcore/io/IoTracker$Mode;

.field public static final enum blacklist WRITE:Llibcore/io/IoTracker$Mode;


# direct methods
.method private static synthetic blacklist $values()[Llibcore/io/IoTracker$Mode;
    .registers 2

    .line 59
    sget-object v0, Llibcore/io/IoTracker$Mode;->READ:Llibcore/io/IoTracker$Mode;

    sget-object v1, Llibcore/io/IoTracker$Mode;->WRITE:Llibcore/io/IoTracker$Mode;

    filled-new-array {v0, v1}, [Llibcore/io/IoTracker$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 60
    new-instance v0, Llibcore/io/IoTracker$Mode;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llibcore/io/IoTracker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/io/IoTracker$Mode;->READ:Llibcore/io/IoTracker$Mode;

    .line 61
    new-instance v0, Llibcore/io/IoTracker$Mode;

    const-string v1, "WRITE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Llibcore/io/IoTracker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/io/IoTracker$Mode;->WRITE:Llibcore/io/IoTracker$Mode;

    .line 59
    invoke-static {}, Llibcore/io/IoTracker$Mode;->$values()[Llibcore/io/IoTracker$Mode;

    move-result-object v0

    sput-object v0, Llibcore/io/IoTracker$Mode;->$VALUES:[Llibcore/io/IoTracker$Mode;

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

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Llibcore/io/IoTracker$Mode;
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

    .line 59
    const-class v0, Llibcore/io/IoTracker$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llibcore/io/IoTracker$Mode;

    return-object v0
.end method

.method public static blacklist values()[Llibcore/io/IoTracker$Mode;
    .registers 1

    .line 59
    sget-object v0, Llibcore/io/IoTracker$Mode;->$VALUES:[Llibcore/io/IoTracker$Mode;

    invoke-virtual {v0}, [Llibcore/io/IoTracker$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llibcore/io/IoTracker$Mode;

    return-object v0
.end method
