.class public final enum Lcom/android/internal/statusbar/StatusBarIcon$Shape;
.super Ljava/lang/Enum;
.source "StatusBarIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/StatusBarIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/statusbar/StatusBarIcon$Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/statusbar/StatusBarIcon$Shape;

.field public static final enum blacklist FIXED_SPACE:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

.field public static final enum blacklist WRAP_CONTENT:Lcom/android/internal/statusbar/StatusBarIcon$Shape;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/statusbar/StatusBarIcon$Shape;
    .registers 2

    .line 51
    sget-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->WRAP_CONTENT:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    sget-object v1, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->FIXED_SPACE:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    filled-new-array {v0, v1}, [Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 58
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    const-string v1, "WRAP_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/statusbar/StatusBarIcon$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->WRAP_CONTENT:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    .line 61
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    const-string v1, "FIXED_SPACE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/statusbar/StatusBarIcon$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->FIXED_SPACE:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    .line 51
    invoke-static {}, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->$values()[Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    move-result-object v0

    sput-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->$VALUES:[Lcom/android/internal/statusbar/StatusBarIcon$Shape;

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

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/statusbar/StatusBarIcon$Shape;
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

    .line 51
    const-class v0, Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/statusbar/StatusBarIcon$Shape;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->$VALUES:[Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    invoke-virtual {v0}, [Lcom/android/internal/statusbar/StatusBarIcon$Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    return-object v0
.end method
