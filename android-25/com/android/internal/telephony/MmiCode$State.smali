.class public final enum Lcom/android/internal/telephony/MmiCode$State;
.super Ljava/lang/Enum;
.source "MmiCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MmiCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/MmiCode$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/MmiCode$State;

.field public static final enum CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

.field public static final enum COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

.field public static final enum FAILED:Lcom/android/internal/telephony/MmiCode$State;

.field public static final enum PENDING:Lcom/android/internal/telephony/MmiCode$State;


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
    .line 28
    new-instance v0, Lcom/android/internal/telephony/MmiCode$State;

    #@6
    const-string/jumbo v1, "PENDING"

    #@9
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MmiCode$State;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@e
    .line 29
    new-instance v0, Lcom/android/internal/telephony/MmiCode$State;

    #@10
    const-string/jumbo v1, "CANCELLED"

    #@13
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/MmiCode$State;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    #@18
    .line 30
    new-instance v0, Lcom/android/internal/telephony/MmiCode$State;

    #@1a
    const-string/jumbo v1, "COMPLETE"

    #@1d
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/MmiCode$State;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@22
    .line 31
    new-instance v0, Lcom/android/internal/telephony/MmiCode$State;

    #@24
    const-string/jumbo v1, "FAILED"

    #@27
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/MmiCode$State;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@2c
    .line 27
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lcom/android/internal/telephony/MmiCode$State;

    #@2f
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->$VALUES:[Lcom/android/internal/telephony/MmiCode$State;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/MmiCode$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
    const-class v0, Lcom/android/internal/telephony/MmiCode$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/MmiCode$State;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    #@0
    .prologue
    .line 27
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->$VALUES:[Lcom/android/internal/telephony/MmiCode$State;

    #@2
    return-object v0
.end method
