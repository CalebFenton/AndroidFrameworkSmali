.class public final enum Lcom/android/internal/telephony/Connection$PostDialState;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostDialState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Connection$PostDialState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum WILD:Lcom/android/internal/telephony/Connection$PostDialState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 367
    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    #@7
    const-string/jumbo v1, "NOT_STARTED"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@f
    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    #@11
    const-string/jumbo v1, "STARTED"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    #@17
    .line 370
    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@19
    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    #@1b
    const-string/jumbo v1, "WAIT"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    #@21
    .line 371
    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    #@23
    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    #@25
    const-string/jumbo v1, "WILD"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 373
    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2d
    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    #@2f
    const-string/jumbo v1, "COMPLETE"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    #@35
    .line 375
    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@37
    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    #@39
    const-string/jumbo v1, "CANCELLED"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    #@40
    .line 376
    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@42
    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    #@44
    const-string/jumbo v1, "PAUSE"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 378
    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@4d
    .line 366
    const/4 v0, 0x7

    #@4e
    new-array v0, v0, [Lcom/android/internal/telephony/Connection$PostDialState;

    #@50
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@52
    aput-object v1, v0, v3

    #@54
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@56
    aput-object v1, v0, v4

    #@58
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    #@5a
    aput-object v1, v0, v5

    #@5c
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    #@5e
    aput-object v1, v0, v6

    #@60
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@62
    aput-object v1, v0, v7

    #@64
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@66
    const/4 v2, 0x5

    #@67
    aput-object v1, v0, v2

    #@69
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@6b
    const/4 v2, 0x6

    #@6c
    aput-object v1, v0, v2

    #@6e
    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->$VALUES:[Lcom/android/internal/telephony/Connection$PostDialState;

    #@70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 366
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 366
    const-class v0, Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/Connection$PostDialState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    #@0
    .prologue
    .line 366
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->$VALUES:[Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    return-object v0
.end method
