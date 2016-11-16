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
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/Duration$TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

.field public static final enum MINUTE:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

.field public static final enum SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

.field public static final enum TENTH_SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;


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
    .line 33
    new-instance v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@5
    const-string/jumbo v1, "MINUTE"

    #@8
    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;-><init>(Ljava/lang/String;II)V

    #@b
    sput-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->MINUTE:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@d
    .line 34
    new-instance v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@f
    const-string/jumbo v1, "SECOND"

    #@12
    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;-><init>(Ljava/lang/String;II)V

    #@15
    sput-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@17
    .line 35
    new-instance v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@19
    const-string/jumbo v1, "TENTH_SECOND"

    #@1c
    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;-><init>(Ljava/lang/String;II)V

    #@1f
    sput-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->TENTH_SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@21
    .line 32
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@24
    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->MINUTE:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->TENTH_SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->$VALUES:[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 40
    iput p3, p0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->mValue:I

    #@5
    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 32
    const-class v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    .locals 1

    #@0
    .prologue
    .line 32
    sget-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->$VALUES:[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@2
    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    #@0
    .prologue
    .line 44
    iget v0, p0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->mValue:I

    #@2
    return v0
.end method
