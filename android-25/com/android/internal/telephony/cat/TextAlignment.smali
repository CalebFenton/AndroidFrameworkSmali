.class public final enum Lcom/android/internal/telephony/cat/TextAlignment;
.super Ljava/lang/Enum;
.source "TextAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum CENTER:Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum DEFAULT:Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum LEFT:Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum RIGHT:Lcom/android/internal/telephony/cat/TextAlignment;


# instance fields
.field private mValue:I


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
    .line 26
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    #@6
    const-string/jumbo v1, "LEFT"

    #@9
    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    #@c
    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->LEFT:Lcom/android/internal/telephony/cat/TextAlignment;

    #@e
    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    #@10
    const-string/jumbo v1, "CENTER"

    #@13
    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    #@16
    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->CENTER:Lcom/android/internal/telephony/cat/TextAlignment;

    #@18
    .line 28
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    #@1a
    const-string/jumbo v1, "RIGHT"

    #@1d
    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    #@20
    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->RIGHT:Lcom/android/internal/telephony/cat/TextAlignment;

    #@22
    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    #@24
    const-string/jumbo v1, "DEFAULT"

    #@27
    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    #@2a
    .line 30
    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->DEFAULT:Lcom/android/internal/telephony/cat/TextAlignment;

    #@2c
    .line 25
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lcom/android/internal/telephony/cat/TextAlignment;

    #@2f
    sget-object v1, Lcom/android/internal/telephony/cat/TextAlignment;->LEFT:Lcom/android/internal/telephony/cat/TextAlignment;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lcom/android/internal/telephony/cat/TextAlignment;->CENTER:Lcom/android/internal/telephony/cat/TextAlignment;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/android/internal/telephony/cat/TextAlignment;->RIGHT:Lcom/android/internal/telephony/cat/TextAlignment;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/android/internal/telephony/cat/TextAlignment;->DEFAULT:Lcom/android/internal/telephony/cat/TextAlignment;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->$VALUES:[Lcom/android/internal/telephony/cat/TextAlignment;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 35
    iput p3, p0, Lcom/android/internal/telephony/cat/TextAlignment;->mValue:I

    #@5
    .line 34
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/TextAlignment;
    .locals 5
    .param p0, "value"    # I

    #@0
    .prologue
    .line 45
    invoke-static {}, Lcom/android/internal/telephony/cat/TextAlignment;->values()[Lcom/android/internal/telephony/cat/TextAlignment;

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
    .line 46
    .local v0, "e":Lcom/android/internal/telephony/cat/TextAlignment;
    iget v4, v0, Lcom/android/internal/telephony/cat/TextAlignment;->mValue:I

    #@c
    if-ne v4, p0, :cond_0

    #@e
    .line 47
    return-object v0

    #@f
    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 50
    .end local v0    # "e":Lcom/android/internal/telephony/cat/TextAlignment;
    :cond_1
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/TextAlignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/TextAlignment;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/cat/TextAlignment;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/TextAlignment;
    .locals 1

    #@0
    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->$VALUES:[Lcom/android/internal/telephony/cat/TextAlignment;

    #@2
    return-object v0
.end method
