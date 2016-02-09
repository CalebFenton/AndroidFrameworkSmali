.class public final enum Ljava/text/Normalizer$Form;
.super Ljava/lang/Enum;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Form"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/text/Normalizer$Form;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/text/Normalizer$Form;

.field public static final enum NFC:Ljava/text/Normalizer$Form;

.field public static final enum NFD:Ljava/text/Normalizer$Form;

.field public static final enum NFKC:Ljava/text/Normalizer$Form;

.field public static final enum NFKD:Ljava/text/Normalizer$Form;


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
    .line 36
    new-instance v0, Ljava/text/Normalizer$Form;

    #@6
    const-string/jumbo v1, "NFD"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;I)V

    #@c
    .line 39
    sput-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    #@e
    .line 41
    new-instance v0, Ljava/text/Normalizer$Form;

    #@10
    const-string/jumbo v1, "NFC"

    #@13
    invoke-direct {v0, v1, v3}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;I)V

    #@16
    .line 44
    sput-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    #@18
    .line 46
    new-instance v0, Ljava/text/Normalizer$Form;

    #@1a
    const-string/jumbo v1, "NFKD"

    #@1d
    invoke-direct {v0, v1, v4}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;I)V

    #@20
    .line 49
    sput-object v0, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    #@22
    .line 51
    new-instance v0, Ljava/text/Normalizer$Form;

    #@24
    const-string/jumbo v1, "NFKC"

    #@27
    invoke-direct {v0, v1, v5}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 54
    sput-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    #@2c
    .line 35
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Ljava/text/Normalizer$Form;

    #@2f
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Ljava/text/Normalizer$Form;->$VALUES:[Ljava/text/Normalizer$Form;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/text/Normalizer$Form;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 35
    const-class v0, Ljava/text/Normalizer$Form;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/text/Normalizer$Form;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/text/Normalizer$Form;
    .locals 1

    #@0
    .prologue
    .line 35
    sget-object v0, Ljava/text/Normalizer$Form;->$VALUES:[Ljava/text/Normalizer$Form;

    #@2
    return-object v0
.end method
