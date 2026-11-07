.class public final enum Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;
.super Ljava/lang/Enum;
.source "RemoteContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/RemoteContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

.field public static final enum blacklist DATA:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

.field public static final enum blacklist PAINT:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

.field public static final enum blacklist UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;
    .registers 3

    .line 366
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->DATA:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->PAINT:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 367
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    const-string v1, "UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 368
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    const-string v1, "DATA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->DATA:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 369
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    const-string v1, "PAINT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->PAINT:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 366
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->$values()[Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

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

    .line 366
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;
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

    .line 366
    const-class v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;
    .registers 1

    .line 366
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    invoke-virtual {v0}, [Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    return-object v0
.end method
