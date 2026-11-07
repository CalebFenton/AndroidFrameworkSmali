.class public final enum Landroid/webkit/WebSettings$PluginState;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PluginState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/webkit/WebSettings$PluginState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/webkit/WebSettings$PluginState;

.field public static final enum whitelist OFF:Landroid/webkit/WebSettings$PluginState;

.field public static final enum whitelist ON:Landroid/webkit/WebSettings$PluginState;

.field public static final enum whitelist ON_DEMAND:Landroid/webkit/WebSettings$PluginState;


# direct methods
.method private static synthetic blacklist $values()[Landroid/webkit/WebSettings$PluginState;
    .registers 3

    .line 225
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    filled-new-array {v0, v1, v2}, [Landroid/webkit/WebSettings$PluginState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 226
    new-instance v0, Landroid/webkit/WebSettings$PluginState;

    const-string v1, "ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    .line 227
    new-instance v0, Landroid/webkit/WebSettings$PluginState;

    const-string v1, "ON_DEMAND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    .line 228
    new-instance v0, Landroid/webkit/WebSettings$PluginState;

    const-string v1, "OFF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    .line 225
    invoke-static {}, Landroid/webkit/WebSettings$PluginState;->$values()[Landroid/webkit/WebSettings$PluginState;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebSettings$PluginState;->$VALUES:[Landroid/webkit/WebSettings$PluginState;

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

    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;
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

    .line 225
    const-class v0, Landroid/webkit/WebSettings$PluginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings$PluginState;

    return-object v0
.end method

.method public static whitelist values()[Landroid/webkit/WebSettings$PluginState;
    .registers 1

    .line 225
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->$VALUES:[Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0}, [Landroid/webkit/WebSettings$PluginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebSettings$PluginState;

    return-object v0
.end method
