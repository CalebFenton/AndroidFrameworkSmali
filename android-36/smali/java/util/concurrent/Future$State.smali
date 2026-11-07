.class public final enum Ljava/util/concurrent/Future$State;
.super Ljava/lang/Enum;
.source "Future.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/util/concurrent/Future$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/concurrent/Future$State;

.field public static final enum whitelist test-api CANCELLED:Ljava/util/concurrent/Future$State;

.field public static final enum whitelist test-api FAILED:Ljava/util/concurrent/Future$State;

.field public static final enum whitelist test-api RUNNING:Ljava/util/concurrent/Future$State;

.field public static final enum whitelist test-api SUCCESS:Ljava/util/concurrent/Future$State;


# direct methods
.method private static synthetic blacklist $values()[Ljava/util/concurrent/Future$State;
    .registers 4

    .line 251
    sget-object v0, Ljava/util/concurrent/Future$State;->RUNNING:Ljava/util/concurrent/Future$State;

    sget-object v1, Ljava/util/concurrent/Future$State;->SUCCESS:Ljava/util/concurrent/Future$State;

    sget-object v2, Ljava/util/concurrent/Future$State;->FAILED:Ljava/util/concurrent/Future$State;

    sget-object v3, Ljava/util/concurrent/Future$State;->CANCELLED:Ljava/util/concurrent/Future$State;

    filled-new-array {v0, v1, v2, v3}, [Ljava/util/concurrent/Future$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 255
    new-instance v0, Ljava/util/concurrent/Future$State;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Future$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/Future$State;->RUNNING:Ljava/util/concurrent/Future$State;

    .line 260
    new-instance v0, Ljava/util/concurrent/Future$State;

    const-string v1, "SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Future$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/Future$State;->SUCCESS:Ljava/util/concurrent/Future$State;

    .line 265
    new-instance v0, Ljava/util/concurrent/Future$State;

    const-string v1, "FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Future$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/Future$State;->FAILED:Ljava/util/concurrent/Future$State;

    .line 270
    new-instance v0, Ljava/util/concurrent/Future$State;

    const-string v1, "CANCELLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Future$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/Future$State;->CANCELLED:Ljava/util/concurrent/Future$State;

    .line 251
    invoke-static {}, Ljava/util/concurrent/Future$State;->$values()[Ljava/util/concurrent/Future$State;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/Future$State;->$VALUES:[Ljava/util/concurrent/Future$State;

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

    .line 251
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/util/concurrent/Future$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 251
    const-class v0, Ljava/util/concurrent/Future$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future$State;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/util/concurrent/Future$State;
    .registers 1

    .line 251
    sget-object v0, Ljava/util/concurrent/Future$State;->$VALUES:[Ljava/util/concurrent/Future$State;

    invoke-virtual {v0}, [Ljava/util/concurrent/Future$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/Future$State;

    return-object v0
.end method
