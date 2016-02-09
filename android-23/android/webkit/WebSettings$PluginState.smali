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
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/WebSettings$PluginState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/WebSettings$PluginState;

.field public static final enum OFF:Landroid/webkit/WebSettings$PluginState;

.field public static final enum ON:Landroid/webkit/WebSettings$PluginState;

.field public static final enum ON_DEMAND:Landroid/webkit/WebSettings$PluginState;


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
    .line 169
    new-instance v0, Landroid/webkit/WebSettings$PluginState;

    #@5
    const-string/jumbo v1, "ON"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    #@d
    .line 170
    new-instance v0, Landroid/webkit/WebSettings$PluginState;

    #@f
    const-string/jumbo v1, "ON_DEMAND"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/webkit/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    #@17
    .line 171
    new-instance v0, Landroid/webkit/WebSettings$PluginState;

    #@19
    const-string/jumbo v1, "OFF"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/webkit/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    #@21
    .line 168
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/webkit/WebSettings$PluginState;

    #@24
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/webkit/WebSettings$PluginState;->$VALUES:[Landroid/webkit/WebSettings$PluginState;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    const-class v0, Landroid/webkit/WebSettings$PluginState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/webkit/WebSettings$PluginState;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/webkit/WebSettings$PluginState;
    .locals 1

    #@0
    .prologue
    .line 168
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->$VALUES:[Landroid/webkit/WebSettings$PluginState;

    #@2
    return-object v0
.end method
