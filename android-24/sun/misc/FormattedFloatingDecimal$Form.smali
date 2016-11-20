.class public final enum Lsun/misc/FormattedFloatingDecimal$Form;
.super Ljava/lang/Enum;
.source "FormattedFloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/FormattedFloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Form"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/misc/FormattedFloatingDecimal$Form;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/misc/FormattedFloatingDecimal$Form;

.field public static final enum COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

.field public static final enum DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

.field public static final enum GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

.field public static final enum SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;


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
    .line 47
    new-instance v0, Lsun/misc/FormattedFloatingDecimal$Form;

    #@6
    const-string/jumbo v1, "SCIENTIFIC"

    #@9
    invoke-direct {v0, v1, v2}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    #@e
    new-instance v0, Lsun/misc/FormattedFloatingDecimal$Form;

    #@10
    const-string/jumbo v1, "COMPATIBLE"

    #@13
    invoke-direct {v0, v1, v3}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@18
    new-instance v0, Lsun/misc/FormattedFloatingDecimal$Form;

    #@1a
    const-string/jumbo v1, "DECIMAL_FLOAT"

    #@1d
    invoke-direct {v0, v1, v4}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    #@22
    new-instance v0, Lsun/misc/FormattedFloatingDecimal$Form;

    #@24
    const-string/jumbo v1, "GENERAL"

    #@27
    invoke-direct {v0, v1, v5}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    #@2c
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lsun/misc/FormattedFloatingDecimal$Form;

    #@2f
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->$VALUES:[Lsun/misc/FormattedFloatingDecimal$Form;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/misc/FormattedFloatingDecimal$Form;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    const-class v0, Lsun/misc/FormattedFloatingDecimal$Form;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/misc/FormattedFloatingDecimal$Form;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/misc/FormattedFloatingDecimal$Form;
    .locals 1

    #@0
    .prologue
    .line 47
    sget-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->$VALUES:[Lsun/misc/FormattedFloatingDecimal$Form;

    #@2
    return-object v0
.end method
