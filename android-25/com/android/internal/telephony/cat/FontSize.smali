.class public final enum Lcom/android/internal/telephony/cat/FontSize;
.super Ljava/lang/Enum;
.source "FontSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/FontSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/FontSize;

.field public static final enum LARGE:Lcom/android/internal/telephony/cat/FontSize;

.field public static final enum NORMAL:Lcom/android/internal/telephony/cat/FontSize;

.field public static final enum SMALL:Lcom/android/internal/telephony/cat/FontSize;


# instance fields
.field private mValue:I


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
    .line 26
    new-instance v0, Lcom/android/internal/telephony/cat/FontSize;

    #@5
    const-string/jumbo v1, "NORMAL"

    #@8
    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/FontSize;-><init>(Ljava/lang/String;II)V

    #@b
    sput-object v0, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    #@d
    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/FontSize;

    #@f
    const-string/jumbo v1, "LARGE"

    #@12
    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/cat/FontSize;-><init>(Ljava/lang/String;II)V

    #@15
    sput-object v0, Lcom/android/internal/telephony/cat/FontSize;->LARGE:Lcom/android/internal/telephony/cat/FontSize;

    #@17
    .line 28
    new-instance v0, Lcom/android/internal/telephony/cat/FontSize;

    #@19
    const-string/jumbo v1, "SMALL"

    #@1c
    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/FontSize;-><init>(Ljava/lang/String;II)V

    #@1f
    sput-object v0, Lcom/android/internal/telephony/cat/FontSize;->SMALL:Lcom/android/internal/telephony/cat/FontSize;

    #@21
    .line 25
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/internal/telephony/cat/FontSize;

    #@24
    sget-object v1, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/internal/telephony/cat/FontSize;->LARGE:Lcom/android/internal/telephony/cat/FontSize;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/internal/telephony/cat/FontSize;->SMALL:Lcom/android/internal/telephony/cat/FontSize;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/internal/telephony/cat/FontSize;->$VALUES:[Lcom/android/internal/telephony/cat/FontSize;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    #@0
    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 33
    iput p3, p0, Lcom/android/internal/telephony/cat/FontSize;->mValue:I

    #@5
    .line 32
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/FontSize;
    .locals 5
    .param p0, "value"    # I

    #@0
    .prologue
    .line 43
    invoke-static {}, Lcom/android/internal/telephony/cat/FontSize;->values()[Lcom/android/internal/telephony/cat/FontSize;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    aget-object v0, v2, v1

    #@a
    .line 44
    .local v0, "e":Lcom/android/internal/telephony/cat/FontSize;
    iget v4, v0, Lcom/android/internal/telephony/cat/FontSize;->mValue:I

    #@c
    if-ne v4, p0, :cond_0

    #@e
    .line 45
    return-object v0

    #@f
    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 48
    .end local v0    # "e":Lcom/android/internal/telephony/cat/FontSize;
    :cond_1
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/FontSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/FontSize;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/cat/FontSize;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/FontSize;
    .locals 1

    #@0
    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/FontSize;->$VALUES:[Lcom/android/internal/telephony/cat/FontSize;

    #@2
    return-object v0
.end method
