.class public final enum Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;
.super Ljava/lang/Enum;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

.field public static final enum blacklist DEBUG:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

.field public static final enum blacklist ERROR:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

.field public static final enum blacklist INFO:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

.field public static final enum blacklist TODO:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

.field public static final enum blacklist WARN:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;
    .registers 5

    .line 66
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->DEBUG:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->INFO:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->WARN:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->ERROR:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->TODO:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 67
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->DEBUG:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    .line 68
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    const-string v1, "INFO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->INFO:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    .line 69
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    const-string v1, "WARN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->WARN:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    .line 70
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->ERROR:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    .line 71
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    const-string v1, "TODO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->TODO:Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    .line 66
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->$values()[Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

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

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;
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

    .line 66
    const-class v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;
    .registers 1

    .line 66
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    invoke-virtual {v0}, [Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;

    return-object v0
.end method
