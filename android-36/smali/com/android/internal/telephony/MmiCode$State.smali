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
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/MmiCode$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/MmiCode$State;

.field public static final enum greylist CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

.field public static final enum greylist COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

.field public static final enum greylist FAILED:Lcom/android/internal/telephony/MmiCode$State;

.field public static final enum greylist PENDING:Lcom/android/internal/telephony/MmiCode$State;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/MmiCode$State;
    .registers 4

    .line 32
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Lcom/android/internal/telephony/MmiCode$State;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MmiCode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/MmiCode$State;

    const-string v1, "CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MmiCode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/MmiCode$State;

    const-string v1, "COMPLETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MmiCode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/MmiCode$State;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MmiCode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    .line 32
    invoke-static {}, Lcom/android/internal/telephony/MmiCode$State;->$values()[Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->$VALUES:[Lcom/android/internal/telephony/MmiCode$State;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/MmiCode$State;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    const-class v0, Lcom/android/internal/telephony/MmiCode$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/MmiCode$State;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/MmiCode$State;
    .registers 1

    .line 32
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->$VALUES:[Lcom/android/internal/telephony/MmiCode$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/MmiCode$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method
