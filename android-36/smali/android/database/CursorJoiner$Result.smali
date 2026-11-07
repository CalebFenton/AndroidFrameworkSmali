.class public final enum Landroid/database/CursorJoiner$Result;
.super Ljava/lang/Enum;
.source "CursorJoiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/CursorJoiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/database/CursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/database/CursorJoiner$Result;

.field public static final enum whitelist BOTH:Landroid/database/CursorJoiner$Result;

.field public static final enum whitelist LEFT:Landroid/database/CursorJoiner$Result;

.field public static final enum whitelist RIGHT:Landroid/database/CursorJoiner$Result;


# direct methods
.method private static synthetic blacklist $values()[Landroid/database/CursorJoiner$Result;
    .registers 3

    .line 59
    sget-object v0, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    sget-object v1, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    sget-object v2, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    filled-new-array {v0, v1, v2}, [Landroid/database/CursorJoiner$Result;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 61
    new-instance v0, Landroid/database/CursorJoiner$Result;

    const-string v1, "RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/database/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    .line 63
    new-instance v0, Landroid/database/CursorJoiner$Result;

    const-string v1, "LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/database/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    .line 65
    new-instance v0, Landroid/database/CursorJoiner$Result;

    const-string v1, "BOTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/database/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    .line 59
    invoke-static {}, Landroid/database/CursorJoiner$Result;->$values()[Landroid/database/CursorJoiner$Result;

    move-result-object v0

    sput-object v0, Landroid/database/CursorJoiner$Result;->$VALUES:[Landroid/database/CursorJoiner$Result;

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

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/database/CursorJoiner$Result;
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
    const-class v0, Landroid/database/CursorJoiner$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/database/CursorJoiner$Result;

    return-object v0
.end method

.method public static whitelist values()[Landroid/database/CursorJoiner$Result;
    .registers 1

    .line 59
    sget-object v0, Landroid/database/CursorJoiner$Result;->$VALUES:[Landroid/database/CursorJoiner$Result;

    invoke-virtual {v0}, [Landroid/database/CursorJoiner$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorJoiner$Result;

    return-object v0
.end method
