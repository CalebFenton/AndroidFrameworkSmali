.class public final enum Ljava/sql/ClientInfoStatus;
.super Ljava/lang/Enum;
.source "ClientInfoStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/sql/ClientInfoStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/sql/ClientInfoStatus;

.field public static final enum REASON_UNKNOWN:Ljava/sql/ClientInfoStatus;

.field public static final enum REASON_UNKNOWN_PROPERTY:Ljava/sql/ClientInfoStatus;

.field public static final enum REASON_VALUE_INVALID:Ljava/sql/ClientInfoStatus;

.field public static final enum REASON_VALUE_TRUNCATED:Ljava/sql/ClientInfoStatus;


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
    .line 27
    new-instance v0, Ljava/sql/ClientInfoStatus;

    #@6
    const-string/jumbo v1, "REASON_UNKNOWN"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Ljava/sql/ClientInfoStatus;->REASON_UNKNOWN:Ljava/sql/ClientInfoStatus;

    #@e
    new-instance v0, Ljava/sql/ClientInfoStatus;

    #@10
    const-string/jumbo v1, "REASON_UNKNOWN_PROPERTY"

    #@13
    invoke-direct {v0, v1, v3}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Ljava/sql/ClientInfoStatus;->REASON_UNKNOWN_PROPERTY:Ljava/sql/ClientInfoStatus;

    #@18
    new-instance v0, Ljava/sql/ClientInfoStatus;

    #@1a
    const-string/jumbo v1, "REASON_VALUE_INVALID"

    #@1d
    invoke-direct {v0, v1, v4}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Ljava/sql/ClientInfoStatus;->REASON_VALUE_INVALID:Ljava/sql/ClientInfoStatus;

    #@22
    new-instance v0, Ljava/sql/ClientInfoStatus;

    #@24
    const-string/jumbo v1, "REASON_VALUE_TRUNCATED"

    #@27
    invoke-direct {v0, v1, v5}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Ljava/sql/ClientInfoStatus;->REASON_VALUE_TRUNCATED:Ljava/sql/ClientInfoStatus;

    #@2c
    .line 26
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Ljava/sql/ClientInfoStatus;

    #@2f
    sget-object v1, Ljava/sql/ClientInfoStatus;->REASON_UNKNOWN:Ljava/sql/ClientInfoStatus;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Ljava/sql/ClientInfoStatus;->REASON_UNKNOWN_PROPERTY:Ljava/sql/ClientInfoStatus;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Ljava/sql/ClientInfoStatus;->REASON_VALUE_INVALID:Ljava/sql/ClientInfoStatus;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Ljava/sql/ClientInfoStatus;->REASON_VALUE_TRUNCATED:Ljava/sql/ClientInfoStatus;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Ljava/sql/ClientInfoStatus;->$VALUES:[Ljava/sql/ClientInfoStatus;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/ClientInfoStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 26
    const-class v0, Ljava/sql/ClientInfoStatus;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/sql/ClientInfoStatus;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/sql/ClientInfoStatus;
    .locals 1

    #@0
    .prologue
    .line 26
    sget-object v0, Ljava/sql/ClientInfoStatus;->$VALUES:[Ljava/sql/ClientInfoStatus;

    #@2
    return-object v0
.end method
