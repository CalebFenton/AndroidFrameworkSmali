.class public final enum Landroid/net/connectivity/javax/annotation/meta/When;
.super Ljava/lang/Enum;
.source "When.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/connectivity/javax/annotation/meta/When;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/connectivity/javax/annotation/meta/When;

.field public static final enum blacklist ALWAYS:Landroid/net/connectivity/javax/annotation/meta/When;

.field public static final enum blacklist MAYBE:Landroid/net/connectivity/javax/annotation/meta/When;

.field public static final enum blacklist NEVER:Landroid/net/connectivity/javax/annotation/meta/When;

.field public static final enum blacklist UNKNOWN:Landroid/net/connectivity/javax/annotation/meta/When;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/connectivity/javax/annotation/meta/When;
    .registers 4

    .line 13
    sget-object v0, Landroid/net/connectivity/javax/annotation/meta/When;->ALWAYS:Landroid/net/connectivity/javax/annotation/meta/When;

    sget-object v1, Landroid/net/connectivity/javax/annotation/meta/When;->UNKNOWN:Landroid/net/connectivity/javax/annotation/meta/When;

    sget-object v2, Landroid/net/connectivity/javax/annotation/meta/When;->MAYBE:Landroid/net/connectivity/javax/annotation/meta/When;

    sget-object v3, Landroid/net/connectivity/javax/annotation/meta/When;->NEVER:Landroid/net/connectivity/javax/annotation/meta/When;

    filled-new-array {v0, v1, v2, v3}, [Landroid/net/connectivity/javax/annotation/meta/When;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 15
    new-instance v0, Landroid/net/connectivity/javax/annotation/meta/When;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/javax/annotation/meta/When;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/javax/annotation/meta/When;->ALWAYS:Landroid/net/connectivity/javax/annotation/meta/When;

    .line 17
    new-instance v0, Landroid/net/connectivity/javax/annotation/meta/When;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/javax/annotation/meta/When;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/javax/annotation/meta/When;->UNKNOWN:Landroid/net/connectivity/javax/annotation/meta/When;

    .line 19
    new-instance v0, Landroid/net/connectivity/javax/annotation/meta/When;

    const-string v1, "MAYBE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/javax/annotation/meta/When;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/javax/annotation/meta/When;->MAYBE:Landroid/net/connectivity/javax/annotation/meta/When;

    .line 21
    new-instance v0, Landroid/net/connectivity/javax/annotation/meta/When;

    const-string v1, "NEVER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/javax/annotation/meta/When;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/javax/annotation/meta/When;->NEVER:Landroid/net/connectivity/javax/annotation/meta/When;

    .line 13
    invoke-static {}, Landroid/net/connectivity/javax/annotation/meta/When;->$values()[Landroid/net/connectivity/javax/annotation/meta/When;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/javax/annotation/meta/When;->$VALUES:[Landroid/net/connectivity/javax/annotation/meta/When;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/net/connectivity/javax/annotation/meta/When;
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

    .line 13
    const-class v0, Landroid/net/connectivity/javax/annotation/meta/When;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/javax/annotation/meta/When;

    return-object v0
.end method

.method public static blacklist values()[Landroid/net/connectivity/javax/annotation/meta/When;
    .registers 1

    .line 13
    sget-object v0, Landroid/net/connectivity/javax/annotation/meta/When;->$VALUES:[Landroid/net/connectivity/javax/annotation/meta/When;

    invoke-virtual {v0}, [Landroid/net/connectivity/javax/annotation/meta/When;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/connectivity/javax/annotation/meta/When;

    return-object v0
.end method
