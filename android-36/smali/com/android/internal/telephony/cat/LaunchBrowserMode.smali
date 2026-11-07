.class public final enum Lcom/android/internal/telephony/cat/LaunchBrowserMode;
.super Ljava/lang/Enum;
.source "LaunchBrowserMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/LaunchBrowserMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

.field public static final enum blacklist LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

.field public static final enum blacklist LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

.field public static final enum blacklist USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    .registers 3

    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    sget-object v1, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    sget-object v2, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    const-string v1, "LAUNCH_IF_NOT_ALREADY_LAUNCHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    const-string v1, "USE_EXISTING_BROWSER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    const-string v1, "LAUNCH_NEW_BROWSER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 25
    invoke-static {}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->$values()[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->$VALUES:[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->$VALUES:[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/LaunchBrowserMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    return-object v0
.end method
