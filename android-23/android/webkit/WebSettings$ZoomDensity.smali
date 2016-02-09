.class public final enum Landroid/webkit/WebSettings$ZoomDensity;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomDensity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/WebSettings$ZoomDensity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/WebSettings$ZoomDensity;

.field public static final enum CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

.field public static final enum FAR:Landroid/webkit/WebSettings$ZoomDensity;

.field public static final enum MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 99
    new-instance v0, Landroid/webkit/WebSettings$ZoomDensity;

    #@5
    const-string/jumbo v1, "FAR"

    #@8
    const/16 v2, 0x96

    #@a
    invoke-direct {v0, v1, v3, v2}, Landroid/webkit/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    #@d
    sput-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    #@f
    new-instance v0, Landroid/webkit/WebSettings$ZoomDensity;

    #@11
    const-string/jumbo v1, "MEDIUM"

    #@14
    .line 100
    const/16 v2, 0x64

    #@16
    .line 99
    invoke-direct {v0, v1, v4, v2}, Landroid/webkit/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    #@19
    .line 100
    sput-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    #@1b
    new-instance v0, Landroid/webkit/WebSettings$ZoomDensity;

    #@1d
    const-string/jumbo v1, "CLOSE"

    #@20
    .line 101
    const/16 v2, 0x4b

    #@22
    .line 100
    invoke-direct {v0, v1, v5, v2}, Landroid/webkit/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    #@25
    .line 101
    sput-object v0, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    #@27
    .line 98
    const/4 v0, 0x3

    #@28
    new-array v0, v0, [Landroid/webkit/WebSettings$ZoomDensity;

    #@2a
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    #@2c
    aput-object v1, v0, v3

    #@2e
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    #@30
    aput-object v1, v0, v4

    #@32
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    #@34
    aput-object v1, v0, v5

    #@36
    sput-object v0, Landroid/webkit/WebSettings$ZoomDensity;->$VALUES:[Landroid/webkit/WebSettings$ZoomDensity;

    #@38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "size"    # I

    #@0
    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 103
    iput p3, p0, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    #@5
    .line 102
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    const-class v0, Landroid/webkit/WebSettings$ZoomDensity;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/webkit/WebSettings$ZoomDensity;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    #@0
    .prologue
    .line 98
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->$VALUES:[Landroid/webkit/WebSettings$ZoomDensity;

    #@2
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget v0, p0, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    #@2
    return v0
.end method
