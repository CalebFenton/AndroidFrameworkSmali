.class public final enum Lcom/android/internal/telephony/cat/TextAlignment;
.super Ljava/lang/Enum;
.source "TextAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum blacklist CENTER:Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum blacklist DEFAULT:Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum blacklist LEFT:Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum blacklist RIGHT:Lcom/android/internal/telephony/cat/TextAlignment;


# instance fields
.field private blacklist mValue:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/cat/TextAlignment;
    .registers 4

    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->LEFT:Lcom/android/internal/telephony/cat/TextAlignment;

    sget-object v1, Lcom/android/internal/telephony/cat/TextAlignment;->CENTER:Lcom/android/internal/telephony/cat/TextAlignment;

    sget-object v2, Lcom/android/internal/telephony/cat/TextAlignment;->RIGHT:Lcom/android/internal/telephony/cat/TextAlignment;

    sget-object v3, Lcom/android/internal/telephony/cat/TextAlignment;->DEFAULT:Lcom/android/internal/telephony/cat/TextAlignment;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/telephony/cat/TextAlignment;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->LEFT:Lcom/android/internal/telephony/cat/TextAlignment;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    const-string v1, "CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->CENTER:Lcom/android/internal/telephony/cat/TextAlignment;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->RIGHT:Lcom/android/internal/telephony/cat/TextAlignment;

    .line 30
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    const-string v1, "DEFAULT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->DEFAULT:Lcom/android/internal/telephony/cat/TextAlignment;

    .line 25
    invoke-static {}, Lcom/android/internal/telephony/cat/TextAlignment;->$values()[Lcom/android/internal/telephony/cat/TextAlignment;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->$VALUES:[Lcom/android/internal/telephony/cat/TextAlignment;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/android/internal/telephony/cat/TextAlignment;->mValue:I

    return-void
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/telephony/cat/TextAlignment;
    .registers 6

    .line 45
    invoke-static {}, Lcom/android/internal/telephony/cat/TextAlignment;->values()[Lcom/android/internal/telephony/cat/TextAlignment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 46
    iget v4, v3, Lcom/android/internal/telephony/cat/TextAlignment;->mValue:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/TextAlignment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/TextAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/TextAlignment;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/cat/TextAlignment;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->$VALUES:[Lcom/android/internal/telephony/cat/TextAlignment;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/TextAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/TextAlignment;

    return-object v0
.end method
