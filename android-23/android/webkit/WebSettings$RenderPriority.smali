.class public final enum Landroid/webkit/WebSettings$RenderPriority;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/WebSettings$RenderPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/WebSettings$RenderPriority;

.field public static final enum HIGH:Landroid/webkit/WebSettings$RenderPriority;

.field public static final enum LOW:Landroid/webkit/WebSettings$RenderPriority;

.field public static final enum NORMAL:Landroid/webkit/WebSettings$RenderPriority;


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
    .line 154
    new-instance v0, Landroid/webkit/WebSettings$RenderPriority;

    #@5
    const-string/jumbo v1, "NORMAL"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    #@d
    .line 155
    new-instance v0, Landroid/webkit/WebSettings$RenderPriority;

    #@f
    const-string/jumbo v1, "HIGH"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/webkit/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    #@17
    .line 156
    new-instance v0, Landroid/webkit/WebSettings$RenderPriority;

    #@19
    const-string/jumbo v1, "LOW"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/webkit/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    #@21
    .line 153
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/webkit/WebSettings$RenderPriority;

    #@24
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/webkit/WebSettings$RenderPriority;->$VALUES:[Landroid/webkit/WebSettings$RenderPriority;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$RenderPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 153
    const-class v0, Landroid/webkit/WebSettings$RenderPriority;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/webkit/WebSettings$RenderPriority;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/webkit/WebSettings$RenderPriority;
    .locals 1

    #@0
    .prologue
    .line 153
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->$VALUES:[Landroid/webkit/WebSettings$RenderPriority;

    #@2
    return-object v0
.end method
