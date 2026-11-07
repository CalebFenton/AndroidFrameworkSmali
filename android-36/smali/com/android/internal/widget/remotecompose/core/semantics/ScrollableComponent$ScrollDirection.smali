.class public final enum Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;
.super Ljava/lang/Enum;
.source "ScrollableComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

.field public static final enum blacklist BACKWARD:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

.field public static final enum blacklist DOWN:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

.field public static final enum blacklist FORWARD:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

.field public static final enum blacklist LEFT:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

.field public static final enum blacklist RIGHT:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

.field public static final enum blacklist UP:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;
    .registers 6

    .line 123
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->FORWARD:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->BACKWARD:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->UP:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->DOWN:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->LEFT:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->RIGHT:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    filled-new-array/range {v0 .. v5}, [Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 124
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    const-string v1, "FORWARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->FORWARD:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    .line 125
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    const-string v1, "BACKWARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->BACKWARD:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    .line 126
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    const-string v1, "UP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->UP:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    .line 127
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    const-string v1, "DOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->DOWN:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    .line 128
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    const-string v1, "LEFT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->LEFT:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    .line 129
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    const-string v1, "RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->RIGHT:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    .line 123
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->$values()[Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

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

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;
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

    .line 123
    const-class v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;
    .registers 1

    .line 123
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    invoke-virtual {v0}, [Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    return-object v0
.end method
