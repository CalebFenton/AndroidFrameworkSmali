.class public final enum Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
.super Ljava/lang/Enum;
.source "ActivityManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceNotificationPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

.field public static final enum blacklist NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

.field public static final enum blacklist SHOW_IMMEDIATELY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

.field public static final enum blacklist UPDATE_ONLY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;


# direct methods
.method private static synthetic blacklist $values()[Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .registers 3

    .line 71
    sget-object v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    sget-object v1, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->SHOW_IMMEDIATELY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    sget-object v2, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->UPDATE_ONLY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    filled-new-array {v0, v1, v2}, [Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 75
    new-instance v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    const-string v1, "NOT_FOREGROUND_SERVICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    .line 80
    new-instance v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    const-string v1, "SHOW_IMMEDIATELY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->SHOW_IMMEDIATELY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    .line 86
    new-instance v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    const-string v1, "UPDATE_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->UPDATE_ONLY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    .line 71
    invoke-static {}, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->$values()[Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->$VALUES:[Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

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

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
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

    .line 71
    const-class v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object v0
.end method

.method public static blacklist values()[Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .registers 1

    .line 71
    sget-object v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->$VALUES:[Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    invoke-virtual {v0}, [Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object v0
.end method
