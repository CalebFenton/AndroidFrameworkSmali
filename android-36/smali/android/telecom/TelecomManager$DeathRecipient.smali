.class Landroid/telecom/TelecomManager$DeathRecipient;
.super Ljava/lang/Object;
.source "TelecomManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/TelecomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeathRecipient"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 3023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/TelecomManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/telecom/TelecomManager$DeathRecipient;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 1

    .line 3026
    invoke-static {}, Landroid/telecom/TelecomManager;->-$$Nest$smresetServiceCache()V

    .line 3027
    return-void
.end method
