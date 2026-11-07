.class public final enum Lsun/net/ProgressSource$State;
.super Ljava/lang/Enum;
.source "ProgressSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ProgressSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/net/ProgressSource$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/net/ProgressSource$State;

.field public static final enum blacklist CONNECTED:Lsun/net/ProgressSource$State;

.field public static final enum blacklist DELETE:Lsun/net/ProgressSource$State;

.field public static final enum blacklist NEW:Lsun/net/ProgressSource$State;

.field public static final enum blacklist UPDATE:Lsun/net/ProgressSource$State;


# direct methods
.method private static synthetic blacklist $values()[Lsun/net/ProgressSource$State;
    .registers 4

    .line 36
    sget-object v0, Lsun/net/ProgressSource$State;->NEW:Lsun/net/ProgressSource$State;

    sget-object v1, Lsun/net/ProgressSource$State;->CONNECTED:Lsun/net/ProgressSource$State;

    sget-object v2, Lsun/net/ProgressSource$State;->UPDATE:Lsun/net/ProgressSource$State;

    sget-object v3, Lsun/net/ProgressSource$State;->DELETE:Lsun/net/ProgressSource$State;

    filled-new-array {v0, v1, v2, v3}, [Lsun/net/ProgressSource$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lsun/net/ProgressSource$State;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/net/ProgressSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ProgressSource$State;->NEW:Lsun/net/ProgressSource$State;

    new-instance v0, Lsun/net/ProgressSource$State;

    const-string v1, "CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsun/net/ProgressSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ProgressSource$State;->CONNECTED:Lsun/net/ProgressSource$State;

    new-instance v0, Lsun/net/ProgressSource$State;

    const-string v1, "UPDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsun/net/ProgressSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ProgressSource$State;->UPDATE:Lsun/net/ProgressSource$State;

    new-instance v0, Lsun/net/ProgressSource$State;

    const-string v1, "DELETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lsun/net/ProgressSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ProgressSource$State;->DELETE:Lsun/net/ProgressSource$State;

    invoke-static {}, Lsun/net/ProgressSource$State;->$values()[Lsun/net/ProgressSource$State;

    move-result-object v0

    sput-object v0, Lsun/net/ProgressSource$State;->$VALUES:[Lsun/net/ProgressSource$State;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/net/ProgressSource$State;
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

    .line 36
    const-class v0, Lsun/net/ProgressSource$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/net/ProgressSource$State;

    return-object v0
.end method

.method public static blacklist values()[Lsun/net/ProgressSource$State;
    .registers 1

    .line 36
    sget-object v0, Lsun/net/ProgressSource$State;->$VALUES:[Lsun/net/ProgressSource$State;

    invoke-virtual {v0}, [Lsun/net/ProgressSource$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/net/ProgressSource$State;

    return-object v0
.end method
