.class public final enum Lcom/android/internal/statusbar/StatusBarIcon$Type;
.super Ljava/lang/Enum;
.source "StatusBarIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/StatusBarIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/statusbar/StatusBarIcon$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/statusbar/StatusBarIcon$Type;

.field public static final enum blacklist NotifSmallIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

.field public static final enum blacklist PeopleAvatar:Lcom/android/internal/statusbar/StatusBarIcon$Type;

.field public static final enum blacklist ResourceIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

.field public static final enum blacklist SystemIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/statusbar/StatusBarIcon$Type;
    .registers 4

    .line 40
    sget-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Type;->PeopleAvatar:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    sget-object v1, Lcom/android/internal/statusbar/StatusBarIcon$Type;->NotifSmallIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    sget-object v2, Lcom/android/internal/statusbar/StatusBarIcon$Type;->SystemIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    sget-object v3, Lcom/android/internal/statusbar/StatusBarIcon$Type;->ResourceIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/statusbar/StatusBarIcon$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon$Type;

    const-string v1, "PeopleAvatar"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/statusbar/StatusBarIcon$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Type;->PeopleAvatar:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    .line 44
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon$Type;

    const-string v1, "NotifSmallIcon"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/statusbar/StatusBarIcon$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Type;->NotifSmallIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    .line 46
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon$Type;

    const-string v1, "SystemIcon"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/statusbar/StatusBarIcon$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Type;->SystemIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    .line 48
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon$Type;

    const-string v1, "ResourceIcon"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/statusbar/StatusBarIcon$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Type;->ResourceIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    .line 40
    invoke-static {}, Lcom/android/internal/statusbar/StatusBarIcon$Type;->$values()[Lcom/android/internal/statusbar/StatusBarIcon$Type;

    move-result-object v0

    sput-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Type;->$VALUES:[Lcom/android/internal/statusbar/StatusBarIcon$Type;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/statusbar/StatusBarIcon$Type;
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

    .line 40
    const-class v0, Lcom/android/internal/statusbar/StatusBarIcon$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/StatusBarIcon$Type;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/statusbar/StatusBarIcon$Type;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Type;->$VALUES:[Lcom/android/internal/statusbar/StatusBarIcon$Type;

    invoke-virtual {v0}, [Lcom/android/internal/statusbar/StatusBarIcon$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/statusbar/StatusBarIcon$Type;

    return-object v0
.end method
