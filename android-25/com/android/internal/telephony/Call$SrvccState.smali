.class public final enum Lcom/android/internal/telephony/Call$SrvccState;
.super Ljava/lang/Enum;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SrvccState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Call$SrvccState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum FAILED:Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum NONE:Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum STARTED:Lcom/android/internal/telephony/Call$SrvccState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 64
    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    #@7
    const-string/jumbo v1, "NONE"

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    #@f
    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    #@11
    const-string/jumbo v1, "STARTED"

    #@14
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    #@19
    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    #@1b
    const-string/jumbo v1, "COMPLETED"

    #@1e
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    #@23
    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    #@25
    const-string/jumbo v1, "FAILED"

    #@28
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    #@2d
    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    #@2f
    const-string/jumbo v1, "CANCELED"

    #@32
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

    #@37
    .line 63
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Lcom/android/internal/telephony/Call$SrvccState;

    #@3a
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->$VALUES:[Lcom/android/internal/telephony/Call$SrvccState;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Call$SrvccState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    const-class v0, Lcom/android/internal/telephony/Call$SrvccState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/Call$SrvccState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/Call$SrvccState;
    .locals 1

    #@0
    .prologue
    .line 63
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->$VALUES:[Lcom/android/internal/telephony/Call$SrvccState;

    #@2
    return-object v0
.end method
