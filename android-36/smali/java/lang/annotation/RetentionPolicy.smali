.class public final enum Ljava/lang/annotation/RetentionPolicy;
.super Ljava/lang/Enum;
.source "RetentionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/annotation/RetentionPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/annotation/RetentionPolicy;

.field public static final enum whitelist test-api CLASS:Ljava/lang/annotation/RetentionPolicy;

.field public static final enum whitelist test-api RUNTIME:Ljava/lang/annotation/RetentionPolicy;

.field public static final enum whitelist test-api SOURCE:Ljava/lang/annotation/RetentionPolicy;


# direct methods
.method private static synthetic blacklist $values()[Ljava/lang/annotation/RetentionPolicy;
    .registers 3

    .line 37
    sget-object v0, Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;

    sget-object v1, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    sget-object v2, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    filled-new-array {v0, v1, v2}, [Ljava/lang/annotation/RetentionPolicy;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 41
    new-instance v0, Ljava/lang/annotation/RetentionPolicy;

    const-string v1, "SOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/RetentionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;

    .line 48
    new-instance v0, Ljava/lang/annotation/RetentionPolicy;

    const-string v1, "CLASS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/RetentionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    .line 56
    new-instance v0, Ljava/lang/annotation/RetentionPolicy;

    const-string v1, "RUNTIME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/RetentionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    .line 37
    invoke-static {}, Ljava/lang/annotation/RetentionPolicy;->$values()[Ljava/lang/annotation/RetentionPolicy;

    move-result-object v0

    sput-object v0, Ljava/lang/annotation/RetentionPolicy;->$VALUES:[Ljava/lang/annotation/RetentionPolicy;

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

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/annotation/RetentionPolicy;
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

    .line 37
    const-class v0, Ljava/lang/annotation/RetentionPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/RetentionPolicy;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/lang/annotation/RetentionPolicy;
    .registers 1

    .line 37
    sget-object v0, Ljava/lang/annotation/RetentionPolicy;->$VALUES:[Ljava/lang/annotation/RetentionPolicy;

    invoke-virtual {v0}, [Ljava/lang/annotation/RetentionPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/RetentionPolicy;

    return-object v0
.end method
