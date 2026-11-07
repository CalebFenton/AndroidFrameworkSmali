.class public final enum Ljava/nio/file/LinkOption;
.super Ljava/lang/Enum;
.source "LinkOption.java"

# interfaces
.implements Ljava/nio/file/OpenOption;
.implements Ljava/nio/file/CopyOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/nio/file/LinkOption;",
        ">;",
        "Ljava/nio/file/OpenOption;",
        "Ljava/nio/file/CopyOption;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/nio/file/LinkOption;

.field public static final enum whitelist test-api NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;


# direct methods
.method private static synthetic blacklist $values()[Ljava/nio/file/LinkOption;
    .registers 1

    .line 34
    sget-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v0}, [Ljava/nio/file/LinkOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Ljava/nio/file/LinkOption;

    const-string v1, "NOFOLLOW_LINKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/LinkOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    .line 34
    invoke-static {}, Ljava/nio/file/LinkOption;->$values()[Ljava/nio/file/LinkOption;

    move-result-object v0

    sput-object v0, Ljava/nio/file/LinkOption;->$VALUES:[Ljava/nio/file/LinkOption;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/nio/file/LinkOption;
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
    const-class v0, Ljava/nio/file/LinkOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/LinkOption;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/nio/file/LinkOption;
    .registers 1

    .line 34
    sget-object v0, Ljava/nio/file/LinkOption;->$VALUES:[Ljava/nio/file/LinkOption;

    invoke-virtual {v0}, [Ljava/nio/file/LinkOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    return-object v0
.end method
