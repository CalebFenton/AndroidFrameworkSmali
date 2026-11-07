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
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/Call$SrvccState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum blacklist CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum blacklist COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum blacklist FAILED:Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum blacklist NONE:Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum blacklist STARTED:Lcom/android/internal/telephony/Call$SrvccState;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/Call$SrvccState;
    .registers 5

    .line 80
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v2, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v4, Lcom/android/internal/telephony/Call$SrvccState;->CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/telephony/Call$SrvccState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 81
    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    const-string v1, "COMPLETED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    const-string v1, "CANCELED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

    .line 80
    invoke-static {}, Lcom/android/internal/telephony/Call$SrvccState;->$values()[Lcom/android/internal/telephony/Call$SrvccState;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->$VALUES:[Lcom/android/internal/telephony/Call$SrvccState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Call$SrvccState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 80
    const-class v0, Lcom/android/internal/telephony/Call$SrvccState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Call$SrvccState;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/Call$SrvccState;
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->$VALUES:[Lcom/android/internal/telephony/Call$SrvccState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Call$SrvccState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Call$SrvccState;

    return-object v0
.end method
