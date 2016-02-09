.class final enum Landroid/icu/impl/SimplePatternFormatter$State;
.super Ljava/lang/Enum;
.source "SimplePatternFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/SimplePatternFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/SimplePatternFormatter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/SimplePatternFormatter$State;

.field public static final enum APOSTROPHE:Landroid/icu/impl/SimplePatternFormatter$State;

.field public static final enum INIT:Landroid/icu/impl/SimplePatternFormatter$State;

.field public static final enum PLACEHOLDER:Landroid/icu/impl/SimplePatternFormatter$State;


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
    .line 308
    new-instance v0, Landroid/icu/impl/SimplePatternFormatter$State;

    #@5
    const-string/jumbo v1, "INIT"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/SimplePatternFormatter$State;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Landroid/icu/impl/SimplePatternFormatter$State;->INIT:Landroid/icu/impl/SimplePatternFormatter$State;

    #@d
    .line 309
    new-instance v0, Landroid/icu/impl/SimplePatternFormatter$State;

    #@f
    const-string/jumbo v1, "APOSTROPHE"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/icu/impl/SimplePatternFormatter$State;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Landroid/icu/impl/SimplePatternFormatter$State;->APOSTROPHE:Landroid/icu/impl/SimplePatternFormatter$State;

    #@17
    .line 310
    new-instance v0, Landroid/icu/impl/SimplePatternFormatter$State;

    #@19
    const-string/jumbo v1, "PLACEHOLDER"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/icu/impl/SimplePatternFormatter$State;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Landroid/icu/impl/SimplePatternFormatter$State;->PLACEHOLDER:Landroid/icu/impl/SimplePatternFormatter$State;

    #@21
    .line 307
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/icu/impl/SimplePatternFormatter$State;

    #@24
    sget-object v1, Landroid/icu/impl/SimplePatternFormatter$State;->INIT:Landroid/icu/impl/SimplePatternFormatter$State;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/icu/impl/SimplePatternFormatter$State;->APOSTROPHE:Landroid/icu/impl/SimplePatternFormatter$State;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/icu/impl/SimplePatternFormatter$State;->PLACEHOLDER:Landroid/icu/impl/SimplePatternFormatter$State;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/icu/impl/SimplePatternFormatter$State;->$VALUES:[Landroid/icu/impl/SimplePatternFormatter$State;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 307
    const-class v0, Landroid/icu/impl/SimplePatternFormatter$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/SimplePatternFormatter$State;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/impl/SimplePatternFormatter$State;
    .locals 1

    #@0
    .prologue
    .line 307
    sget-object v0, Landroid/icu/impl/SimplePatternFormatter$State;->$VALUES:[Landroid/icu/impl/SimplePatternFormatter$State;

    #@2
    return-object v0
.end method
