.class public final enum Landroid/icu/text/DisplayContext$Type;
.super Ljava/lang/Enum;
.source "DisplayContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DisplayContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/DisplayContext$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/DisplayContext$Type;

.field public static final enum CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

.field public static final enum DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

.field public static final enum DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;


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
    .line 98
    new-instance v0, Landroid/icu/text/DisplayContext$Type;

    #@5
    const-string/jumbo v1, "DIALECT_HANDLING"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    #@b
    .line 102
    sput-object v0, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    #@d
    .line 103
    new-instance v0, Landroid/icu/text/DisplayContext$Type;

    #@f
    const-string/jumbo v1, "CAPITALIZATION"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    #@15
    .line 108
    sput-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@17
    .line 109
    new-instance v0, Landroid/icu/text/DisplayContext$Type;

    #@19
    const-string/jumbo v1, "DISPLAY_LENGTH"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 114
    sput-object v0, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    #@21
    .line 97
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/icu/text/DisplayContext$Type;

    #@24
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/icu/text/DisplayContext$Type;->$VALUES:[Landroid/icu/text/DisplayContext$Type;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/DisplayContext$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    const-class v0, Landroid/icu/text/DisplayContext$Type;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/DisplayContext$Type;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/DisplayContext$Type;
    .locals 1

    #@0
    .prologue
    .line 97
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->$VALUES:[Landroid/icu/text/DisplayContext$Type;

    #@2
    return-object v0
.end method
