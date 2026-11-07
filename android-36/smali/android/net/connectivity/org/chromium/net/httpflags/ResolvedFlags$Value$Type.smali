.class public final enum Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;
.super Ljava/lang/Enum;
.source "ResolvedFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

.field public static final enum blacklist BOOL:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

.field public static final enum blacklist BYTES:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

.field public static final enum blacklist FLOAT:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

.field public static final enum blacklist INT:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

.field public static final enum blacklist STRING:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;
    .registers 5

    .line 32
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->BOOL:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    sget-object v1, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->INT:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    sget-object v2, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->FLOAT:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    sget-object v3, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->STRING:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    sget-object v4, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->BYTES:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    const-string v1, "BOOL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->BOOL:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    .line 34
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    const-string v1, "INT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->INT:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    .line 35
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    const-string v1, "FLOAT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->FLOAT:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    .line 36
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    const-string v1, "STRING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->STRING:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    .line 37
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    const-string v1, "BYTES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->BYTES:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    .line 32
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->$values()[Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->$VALUES:[Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;
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

    .line 32
    const-class v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-object v0
.end method

.method public static blacklist values()[Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;
    .registers 1

    .line 32
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->$VALUES:[Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-virtual {v0}, [Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-object v0
.end method
