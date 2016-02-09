.class public final enum Landroid/icu/text/ListFormatter$Style;
.super Ljava/lang/Enum;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/ListFormatter$Style;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/ListFormatter$Style;

.field public static final enum DURATION:Landroid/icu/text/ListFormatter$Style;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum DURATION_NARROW:Landroid/icu/text/ListFormatter$Style;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum DURATION_SHORT:Landroid/icu/text/ListFormatter$Style;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum STANDARD:Landroid/icu/text/ListFormatter$Style;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 45
    new-instance v0, Landroid/icu/text/ListFormatter$Style;

    #@6
    const-string/jumbo v1, "STANDARD"

    #@9
    .line 51
    const-string/jumbo v2, "standard"

    #@c
    .line 45
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/text/ListFormatter$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@f
    .line 51
    sput-object v0, Landroid/icu/text/ListFormatter$Style;->STANDARD:Landroid/icu/text/ListFormatter$Style;

    #@11
    .line 52
    new-instance v0, Landroid/icu/text/ListFormatter$Style;

    #@13
    const-string/jumbo v1, "DURATION"

    #@16
    .line 58
    const-string/jumbo v2, "unit"

    #@19
    .line 52
    invoke-direct {v0, v1, v4, v2}, Landroid/icu/text/ListFormatter$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1c
    .line 58
    sput-object v0, Landroid/icu/text/ListFormatter$Style;->DURATION:Landroid/icu/text/ListFormatter$Style;

    #@1e
    .line 59
    new-instance v0, Landroid/icu/text/ListFormatter$Style;

    #@20
    const-string/jumbo v1, "DURATION_SHORT"

    #@23
    .line 65
    const-string/jumbo v2, "unit-short"

    #@26
    .line 59
    invoke-direct {v0, v1, v5, v2}, Landroid/icu/text/ListFormatter$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@29
    .line 65
    sput-object v0, Landroid/icu/text/ListFormatter$Style;->DURATION_SHORT:Landroid/icu/text/ListFormatter$Style;

    #@2b
    .line 66
    new-instance v0, Landroid/icu/text/ListFormatter$Style;

    #@2d
    const-string/jumbo v1, "DURATION_NARROW"

    #@30
    .line 72
    const-string/jumbo v2, "unit-narrow"

    #@33
    .line 66
    invoke-direct {v0, v1, v6, v2}, Landroid/icu/text/ListFormatter$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@36
    .line 72
    sput-object v0, Landroid/icu/text/ListFormatter$Style;->DURATION_NARROW:Landroid/icu/text/ListFormatter$Style;

    #@38
    .line 44
    const/4 v0, 0x4

    #@39
    new-array v0, v0, [Landroid/icu/text/ListFormatter$Style;

    #@3b
    sget-object v1, Landroid/icu/text/ListFormatter$Style;->STANDARD:Landroid/icu/text/ListFormatter$Style;

    #@3d
    aput-object v1, v0, v3

    #@3f
    sget-object v1, Landroid/icu/text/ListFormatter$Style;->DURATION:Landroid/icu/text/ListFormatter$Style;

    #@41
    aput-object v1, v0, v4

    #@43
    sget-object v1, Landroid/icu/text/ListFormatter$Style;->DURATION_SHORT:Landroid/icu/text/ListFormatter$Style;

    #@45
    aput-object v1, v0, v5

    #@47
    sget-object v1, Landroid/icu/text/ListFormatter$Style;->DURATION_NARROW:Landroid/icu/text/ListFormatter$Style;

    #@49
    aput-object v1, v0, v6

    #@4b
    sput-object v0, Landroid/icu/text/ListFormatter$Style;->$VALUES:[Landroid/icu/text/ListFormatter$Style;

    #@4d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 77
    iput-object p3, p0, Landroid/icu/text/ListFormatter$Style;->name:Ljava/lang/String;

    #@5
    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/ListFormatter$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    const-class v0, Landroid/icu/text/ListFormatter$Style;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/ListFormatter$Style;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/ListFormatter$Style;
    .locals 1

    #@0
    .prologue
    .line 44
    sget-object v0, Landroid/icu/text/ListFormatter$Style;->$VALUES:[Landroid/icu/text/ListFormatter$Style;

    #@2
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/icu/text/ListFormatter$Style;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
