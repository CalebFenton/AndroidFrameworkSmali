.class public final enum Lcom/android/internal/telephony/cat/LaunchBrowserMode;
.super Ljava/lang/Enum;
.source "LaunchBrowserMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/LaunchBrowserMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

.field public static final enum LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

.field public static final enum LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

.field public static final enum USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 26
    new-instance v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@5
    const-string/jumbo v1, "LAUNCH_IF_NOT_ALREADY_LAUNCHED"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;-><init>(Ljava/lang/String;I)V

    #@b
    .line 27
    sput-object v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@d
    .line 28
    new-instance v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@f
    const-string/jumbo v1, "USE_EXISTING_BROWSER"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;-><init>(Ljava/lang/String;I)V

    #@15
    .line 32
    sput-object v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@17
    .line 33
    new-instance v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@19
    const-string/jumbo v1, "LAUNCH_NEW_BROWSER"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 34
    sput-object v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@21
    .line 25
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@24
    sget-object v1, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->$VALUES:[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    .locals 1

    #@0
    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->$VALUES:[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@2
    return-object v0
.end method
