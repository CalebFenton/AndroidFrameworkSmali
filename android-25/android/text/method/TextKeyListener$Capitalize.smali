.class public final enum Landroid/text/method/TextKeyListener$Capitalize;
.super Ljava/lang/Enum;
.source "TextKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/TextKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Capitalize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/text/method/TextKeyListener$Capitalize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/text/method/TextKeyListener$Capitalize;

.field public static final enum CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

.field public static final enum NONE:Landroid/text/method/TextKeyListener$Capitalize;

.field public static final enum SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

.field public static final enum WORDS:Landroid/text/method/TextKeyListener$Capitalize;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 208
    new-instance v0, Landroid/text/method/TextKeyListener$Capitalize;

    #@6
    const-string/jumbo v1, "NONE"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/text/method/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    #@e
    new-instance v0, Landroid/text/method/TextKeyListener$Capitalize;

    #@10
    const-string/jumbo v1, "SENTENCES"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/text/method/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    #@18
    new-instance v0, Landroid/text/method/TextKeyListener$Capitalize;

    #@1a
    const-string/jumbo v1, "WORDS"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/text/method/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    #@22
    new-instance v0, Landroid/text/method/TextKeyListener$Capitalize;

    #@24
    const-string/jumbo v1, "CHARACTERS"

    #@27
    invoke-direct {v0, v1, v5}, Landroid/text/method/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    #@2c
    .line 207
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/text/method/TextKeyListener$Capitalize;

    #@2f
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/text/method/TextKeyListener$Capitalize;->$VALUES:[Landroid/text/method/TextKeyListener$Capitalize;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/text/method/TextKeyListener$Capitalize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 207
    const-class v0, Landroid/text/method/TextKeyListener$Capitalize;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/text/method/TextKeyListener$Capitalize;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/text/method/TextKeyListener$Capitalize;
    .locals 1

    #@0
    .prologue
    .line 207
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->$VALUES:[Landroid/text/method/TextKeyListener$Capitalize;

    #@2
    return-object v0
.end method
