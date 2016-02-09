.class public final enum Ljava/util/Formatter$BigDecimalLayoutForm;
.super Ljava/lang/Enum;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BigDecimalLayoutForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/Formatter$BigDecimalLayoutForm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/Formatter$BigDecimalLayoutForm;

.field public static final enum DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

.field public static final enum SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 536
    new-instance v0, Ljava/util/Formatter$BigDecimalLayoutForm;

    #@4
    const-string/jumbo v1, "SCIENTIFIC"

    #@7
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$BigDecimalLayoutForm;-><init>(Ljava/lang/String;I)V

    #@a
    .line 539
    sput-object v0, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    #@c
    .line 540
    new-instance v0, Ljava/util/Formatter$BigDecimalLayoutForm;

    #@e
    const-string/jumbo v1, "DECIMAL_FLOAT"

    #@11
    invoke-direct {v0, v1, v3}, Ljava/util/Formatter$BigDecimalLayoutForm;-><init>(Ljava/lang/String;I)V

    #@14
    .line 543
    sput-object v0, Ljava/util/Formatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

    #@16
    .line 535
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Ljava/util/Formatter$BigDecimalLayoutForm;

    #@19
    sget-object v1, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Ljava/util/Formatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Ljava/util/Formatter$BigDecimalLayoutForm;->$VALUES:[Ljava/util/Formatter$BigDecimalLayoutForm;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 535
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/Formatter$BigDecimalLayoutForm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 535
    const-class v0, Ljava/util/Formatter$BigDecimalLayoutForm;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Formatter$BigDecimalLayoutForm;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/util/Formatter$BigDecimalLayoutForm;
    .locals 1

    #@0
    .prologue
    .line 535
    sget-object v0, Ljava/util/Formatter$BigDecimalLayoutForm;->$VALUES:[Ljava/util/Formatter$BigDecimalLayoutForm;

    #@2
    return-object v0
.end method
