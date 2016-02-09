.class public final enum Landroid/webkit/WebSettings$TextSize;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/WebSettings$TextSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/WebSettings$TextSize;

.field public static final enum LARGER:Landroid/webkit/WebSettings$TextSize;

.field public static final enum LARGEST:Landroid/webkit/WebSettings$TextSize;

.field public static final enum NORMAL:Landroid/webkit/WebSettings$TextSize;

.field public static final enum SMALLER:Landroid/webkit/WebSettings$TextSize;

.field public static final enum SMALLEST:Landroid/webkit/WebSettings$TextSize;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 79
    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    #@7
    const-string/jumbo v1, "SMALLEST"

    #@a
    const/16 v2, 0x32

    #@c
    invoke-direct {v0, v1, v3, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    #@f
    sput-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    #@11
    .line 80
    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    #@13
    const-string/jumbo v1, "SMALLER"

    #@16
    const/16 v2, 0x4b

    #@18
    invoke-direct {v0, v1, v4, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    #@1b
    sput-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    #@1d
    .line 81
    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    #@1f
    const-string/jumbo v1, "NORMAL"

    #@22
    const/16 v2, 0x64

    #@24
    invoke-direct {v0, v1, v5, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    #@27
    sput-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    #@29
    .line 82
    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    #@2b
    const-string/jumbo v1, "LARGER"

    #@2e
    const/16 v2, 0x96

    #@30
    invoke-direct {v0, v1, v6, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    #@33
    sput-object v0, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    #@35
    .line 83
    new-instance v0, Landroid/webkit/WebSettings$TextSize;

    #@37
    const-string/jumbo v1, "LARGEST"

    #@3a
    const/16 v2, 0xc8

    #@3c
    invoke-direct {v0, v1, v7, v2}, Landroid/webkit/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    #@3f
    sput-object v0, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    #@41
    .line 78
    const/4 v0, 0x5

    #@42
    new-array v0, v0, [Landroid/webkit/WebSettings$TextSize;

    #@44
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    #@46
    aput-object v1, v0, v3

    #@48
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    #@4a
    aput-object v1, v0, v4

    #@4c
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    #@4e
    aput-object v1, v0, v5

    #@50
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    #@52
    aput-object v1, v0, v6

    #@54
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    #@56
    aput-object v1, v0, v7

    #@58
    sput-object v0, Landroid/webkit/WebSettings$TextSize;->$VALUES:[Landroid/webkit/WebSettings$TextSize;

    #@5a
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "size"    # I

    #@0
    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 85
    iput p3, p0, Landroid/webkit/WebSettings$TextSize;->value:I

    #@5
    .line 84
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    const-class v0, Landroid/webkit/WebSettings$TextSize;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/webkit/WebSettings$TextSize;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/webkit/WebSettings$TextSize;
    .locals 1

    #@0
    .prologue
    .line 78
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->$VALUES:[Landroid/webkit/WebSettings$TextSize;

    #@2
    return-object v0
.end method
