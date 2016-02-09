.class final enum Landroid/icu/text/PluralRules$Operand;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Operand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/PluralRules$Operand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/PluralRules$Operand;

.field public static final enum f:Landroid/icu/text/PluralRules$Operand;

.field public static final enum i:Landroid/icu/text/PluralRules$Operand;

.field public static final enum j:Landroid/icu/text/PluralRules$Operand;

.field public static final enum n:Landroid/icu/text/PluralRules$Operand;

.field public static final enum t:Landroid/icu/text/PluralRules$Operand;

.field public static final enum v:Landroid/icu/text/PluralRules$Operand;

.field public static final enum w:Landroid/icu/text/PluralRules$Operand;


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
    .line 412
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    #@7
    const-string/jumbo v1, "n"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    #@f
    .line 413
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    #@11
    const-string/jumbo v1, "i"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    #@19
    .line 414
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    #@1b
    const-string/jumbo v1, "f"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    #@23
    .line 415
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    #@25
    const-string/jumbo v1, "t"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    #@2d
    .line 416
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    #@2f
    const-string/jumbo v1, "v"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    #@37
    .line 417
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    #@39
    const-string/jumbo v1, "w"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    #@42
    .line 418
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    #@44
    const-string/jumbo v1, "j"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 419
    sput-object v0, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    #@4d
    .line 411
    const/4 v0, 0x7

    #@4e
    new-array v0, v0, [Landroid/icu/text/PluralRules$Operand;

    #@50
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    #@52
    aput-object v1, v0, v3

    #@54
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    #@56
    aput-object v1, v0, v4

    #@58
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    #@5a
    aput-object v1, v0, v5

    #@5c
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    #@5e
    aput-object v1, v0, v6

    #@60
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    #@62
    aput-object v1, v0, v7

    #@64
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    #@66
    const/4 v2, 0x5

    #@67
    aput-object v1, v0, v2

    #@69
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    #@6b
    const/4 v2, 0x6

    #@6c
    aput-object v1, v0, v2

    #@6e
    sput-object v0, Landroid/icu/text/PluralRules$Operand;->$VALUES:[Landroid/icu/text/PluralRules$Operand;

    #@70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 411
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 411
    const-class v0, Landroid/icu/text/PluralRules$Operand;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/PluralRules$Operand;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/PluralRules$Operand;
    .locals 1

    #@0
    .prologue
    .line 411
    sget-object v0, Landroid/icu/text/PluralRules$Operand;->$VALUES:[Landroid/icu/text/PluralRules$Operand;

    #@2
    return-object v0
.end method
