.class public final enum Ljava/nio/file/StandardCopyOption;
.super Ljava/lang/Enum;
.source "StandardCopyOption.java"

# interfaces
.implements Ljava/nio/file/CopyOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/nio/file/StandardCopyOption;",
        ">;",
        "Ljava/nio/file/CopyOption;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/nio/file/StandardCopyOption;

.field public static final enum whitelist test-api ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

.field public static final enum whitelist test-api COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

.field public static final enum whitelist test-api REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;


# direct methods
.method private static synthetic blacklist $values()[Ljava/nio/file/StandardCopyOption;
    .registers 3

    .line 34
    sget-object v0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    sget-object v1, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    sget-object v2, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    filled-new-array {v0, v1, v2}, [Ljava/nio/file/StandardCopyOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 38
    new-instance v0, Ljava/nio/file/StandardCopyOption;

    const-string v1, "REPLACE_EXISTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 42
    new-instance v0, Ljava/nio/file/StandardCopyOption;

    const-string v1, "COPY_ATTRIBUTES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    .line 46
    new-instance v0, Ljava/nio/file/StandardCopyOption;

    const-string v1, "ATOMIC_MOVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    .line 34
    invoke-static {}, Ljava/nio/file/StandardCopyOption;->$values()[Ljava/nio/file/StandardCopyOption;

    move-result-object v0

    sput-object v0, Ljava/nio/file/StandardCopyOption;->$VALUES:[Ljava/nio/file/StandardCopyOption;

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

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/nio/file/StandardCopyOption;
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
    const-class v0, Ljava/nio/file/StandardCopyOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/StandardCopyOption;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/nio/file/StandardCopyOption;
    .registers 1

    .line 34
    sget-object v0, Ljava/nio/file/StandardCopyOption;->$VALUES:[Ljava/nio/file/StandardCopyOption;

    invoke-virtual {v0}, [Ljava/nio/file/StandardCopyOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/StandardCopyOption;

    return-object v0
.end method
