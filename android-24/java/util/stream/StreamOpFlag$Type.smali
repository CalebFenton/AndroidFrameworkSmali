.class final enum Ljava/util/stream/StreamOpFlag$Type;
.super Ljava/lang/Enum;
.source "StreamOpFlag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamOpFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/stream/StreamOpFlag$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/stream/StreamOpFlag$Type;

.field public static final enum OP:Ljava/util/stream/StreamOpFlag$Type;

.field public static final enum SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

.field public static final enum STREAM:Ljava/util/stream/StreamOpFlag$Type;

.field public static final enum TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

.field public static final enum UPSTREAM_TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;


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
    .line 342
    new-instance v0, Ljava/util/stream/StreamOpFlag$Type;

    #@7
    const-string/jumbo v1, "SPLITERATOR"

    #@a
    invoke-direct {v0, v1, v2}, Ljava/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    #@d
    .line 345
    sput-object v0, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    #@f
    .line 347
    new-instance v0, Ljava/util/stream/StreamOpFlag$Type;

    #@11
    const-string/jumbo v1, "STREAM"

    #@14
    invoke-direct {v0, v1, v3}, Ljava/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    #@17
    .line 350
    sput-object v0, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    #@19
    .line 352
    new-instance v0, Ljava/util/stream/StreamOpFlag$Type;

    #@1b
    const-string/jumbo v1, "OP"

    #@1e
    invoke-direct {v0, v1, v4}, Ljava/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    #@21
    .line 355
    sput-object v0, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    #@23
    .line 357
    new-instance v0, Ljava/util/stream/StreamOpFlag$Type;

    #@25
    const-string/jumbo v1, "TERMINAL_OP"

    #@28
    invoke-direct {v0, v1, v5}, Ljava/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 360
    sput-object v0, Ljava/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    #@2d
    .line 362
    new-instance v0, Ljava/util/stream/StreamOpFlag$Type;

    #@2f
    const-string/jumbo v1, "UPSTREAM_TERMINAL_OP"

    #@32
    invoke-direct {v0, v1, v6}, Ljava/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    #@35
    .line 366
    sput-object v0, Ljava/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    #@37
    .line 341
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Ljava/util/stream/StreamOpFlag$Type;

    #@3a
    sget-object v1, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Ljava/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Ljava/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Ljava/util/stream/StreamOpFlag$Type;->$VALUES:[Ljava/util/stream/StreamOpFlag$Type;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/stream/StreamOpFlag$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 341
    const-class v0, Ljava/util/stream/StreamOpFlag$Type;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/stream/StreamOpFlag$Type;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/util/stream/StreamOpFlag$Type;
    .locals 1

    #@0
    .prologue
    .line 341
    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->$VALUES:[Ljava/util/stream/StreamOpFlag$Type;

    #@2
    return-object v0
.end method
