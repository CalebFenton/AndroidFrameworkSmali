.class public final enum Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
.super Ljava/lang/Enum;
.source "AccessibleComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

.field public static final enum blacklist CLEAR_AND_SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

.field public static final enum blacklist MERGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

.field public static final enum blacklist SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    .registers 3

    .line 162
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->CLEAR_AND_SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->MERGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 163
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    const-string v1, "SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    .line 164
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    const-string v1, "CLEAR_AND_SET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->CLEAR_AND_SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    .line 165
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    const-string v1, "MERGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->MERGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    .line 162
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->$values()[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

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

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
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

    .line 162
    const-class v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    .registers 1

    .line 162
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    invoke-virtual {v0}, [Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    return-object v0
.end method
