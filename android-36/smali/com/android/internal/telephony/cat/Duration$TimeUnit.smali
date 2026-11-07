.class public final enum Lcom/android/internal/telephony/cat/Duration$TimeUnit;
.super Ljava/lang/Enum;
.source "Duration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/Duration$TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

.field public static final enum blacklist MINUTE:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

.field public static final enum blacklist SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

.field public static final enum blacklist TENTH_SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;


# instance fields
.field private blacklist mValue:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    .registers 3

    .line 36
    sget-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->MINUTE:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v2, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->TENTH_SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 37
    new-instance v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    const-string v1, "MINUTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->MINUTE:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    const-string v1, "SECOND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    const-string v1, "TENTH_SECOND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->TENTH_SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    .line 36
    invoke-static {}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->$values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->$VALUES:[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

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

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->mValue:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 36
    const-class v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    .registers 1

    .line 36
    sget-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->$VALUES:[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/Duration$TimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    return-object v0
.end method


# virtual methods
.method public greylist-max-r value()I
    .registers 1

    .line 49
    iget p0, p0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->mValue:I

    return p0
.end method
