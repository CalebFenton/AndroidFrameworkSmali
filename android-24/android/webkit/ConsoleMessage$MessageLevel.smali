.class public final enum Landroid/webkit/ConsoleMessage$MessageLevel;
.super Ljava/lang/Enum;
.source "ConsoleMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ConsoleMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/ConsoleMessage$MessageLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/ConsoleMessage$MessageLevel;

.field public static final enum DEBUG:Landroid/webkit/ConsoleMessage$MessageLevel;

.field public static final enum ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

.field public static final enum LOG:Landroid/webkit/ConsoleMessage$MessageLevel;

.field public static final enum TIP:Landroid/webkit/ConsoleMessage$MessageLevel;

.field public static final enum WARNING:Landroid/webkit/ConsoleMessage$MessageLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 30
    new-instance v0, Landroid/webkit/ConsoleMessage$MessageLevel;

    #@7
    const-string/jumbo v1, "TIP"

    #@a
    invoke-direct {v0, v1, v2}, Landroid/webkit/ConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->TIP:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@f
    .line 31
    new-instance v0, Landroid/webkit/ConsoleMessage$MessageLevel;

    #@11
    const-string/jumbo v1, "LOG"

    #@14
    invoke-direct {v0, v1, v3}, Landroid/webkit/ConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->LOG:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@19
    .line 32
    new-instance v0, Landroid/webkit/ConsoleMessage$MessageLevel;

    #@1b
    const-string/jumbo v1, "WARNING"

    #@1e
    invoke-direct {v0, v1, v4}, Landroid/webkit/ConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->WARNING:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@23
    .line 33
    new-instance v0, Landroid/webkit/ConsoleMessage$MessageLevel;

    #@25
    const-string/jumbo v1, "ERROR"

    #@28
    invoke-direct {v0, v1, v5}, Landroid/webkit/ConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@2d
    .line 34
    new-instance v0, Landroid/webkit/ConsoleMessage$MessageLevel;

    #@2f
    const-string/jumbo v1, "DEBUG"

    #@32
    invoke-direct {v0, v1, v6}, Landroid/webkit/ConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->DEBUG:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@37
    .line 29
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Landroid/webkit/ConsoleMessage$MessageLevel;

    #@3a
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->TIP:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->LOG:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->WARNING:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->DEBUG:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->$VALUES:[Landroid/webkit/ConsoleMessage$MessageLevel;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/ConsoleMessage$MessageLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    const-class v0, Landroid/webkit/ConsoleMessage$MessageLevel;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/webkit/ConsoleMessage$MessageLevel;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/webkit/ConsoleMessage$MessageLevel;
    .locals 1

    #@0
    .prologue
    .line 29
    sget-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->$VALUES:[Landroid/webkit/ConsoleMessage$MessageLevel;

    #@2
    return-object v0
.end method
