.class public final enum Ljavax/sip/TransactionState;
.super Ljava/lang/Enum;
.source "TransactionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/sip/TransactionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/sip/TransactionState;

.field public static final enum CALLING:Ljavax/sip/TransactionState;

.field public static final enum COMPLETED:Ljavax/sip/TransactionState;

.field public static final enum CONFIRMED:Ljavax/sip/TransactionState;

.field public static final enum PROCEEDING:Ljavax/sip/TransactionState;

.field public static final enum TERMINATED:Ljavax/sip/TransactionState;

.field public static final enum TRYING:Ljavax/sip/TransactionState;


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
    .line 4
    new-instance v0, Ljavax/sip/TransactionState;

    #@7
    const-string/jumbo v1, "CALLING"

    #@a
    invoke-direct {v0, v1, v3}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    #@f
    .line 5
    new-instance v0, Ljavax/sip/TransactionState;

    #@11
    const-string/jumbo v1, "TRYING"

    #@14
    invoke-direct {v0, v1, v4}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@19
    .line 6
    new-instance v0, Ljavax/sip/TransactionState;

    #@1b
    const-string/jumbo v1, "PROCEEDING"

    #@1e
    invoke-direct {v0, v1, v5}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@23
    .line 7
    new-instance v0, Ljavax/sip/TransactionState;

    #@25
    const-string/jumbo v1, "COMPLETED"

    #@28
    invoke-direct {v0, v1, v6}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@2d
    .line 8
    new-instance v0, Ljavax/sip/TransactionState;

    #@2f
    const-string/jumbo v1, "CONFIRMED"

    #@32
    invoke-direct {v0, v1, v7}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    #@37
    .line 9
    new-instance v0, Ljavax/sip/TransactionState;

    #@39
    const-string/jumbo v1, "TERMINATED"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@42
    .line 3
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Ljavax/sip/TransactionState;

    #@45
    sget-object v1, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Ljavax/sip/TransactionState;->$VALUES:[Ljavax/sip/TransactionState;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/sip/TransactionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3
    const-class v0, Ljavax/sip/TransactionState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/sip/TransactionState;

    #@8
    return-object v0
.end method

.method public static values()[Ljavax/sip/TransactionState;
    .locals 1

    #@0
    .prologue
    .line 3
    sget-object v0, Ljavax/sip/TransactionState;->$VALUES:[Ljavax/sip/TransactionState;

    #@2
    return-object v0
.end method
