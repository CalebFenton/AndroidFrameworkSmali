.class public final enum Ljavax/sip/Timeout;
.super Ljava/lang/Enum;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/sip/Timeout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/sip/Timeout;

.field public static final enum RETRANSMIT:Ljavax/sip/Timeout;

.field public static final enum TRANSACTION:Ljavax/sip/Timeout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 4
    new-instance v0, Ljavax/sip/Timeout;

    #@4
    const-string/jumbo v1, "RETRANSMIT"

    #@7
    invoke-direct {v0, v1, v2}, Ljavax/sip/Timeout;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    #@c
    .line 5
    new-instance v0, Ljavax/sip/Timeout;

    #@e
    const-string/jumbo v1, "TRANSACTION"

    #@11
    invoke-direct {v0, v1, v3}, Ljavax/sip/Timeout;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Ljavax/sip/Timeout;->TRANSACTION:Ljavax/sip/Timeout;

    #@16
    .line 3
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Ljavax/sip/Timeout;

    #@19
    sget-object v1, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Ljavax/sip/Timeout;->TRANSACTION:Ljavax/sip/Timeout;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Ljavax/sip/Timeout;->$VALUES:[Ljavax/sip/Timeout;

    #@23
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

.method public static valueOf(Ljava/lang/String;)Ljavax/sip/Timeout;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3
    const-class v0, Ljavax/sip/Timeout;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/sip/Timeout;

    #@8
    return-object v0
.end method

.method public static values()[Ljavax/sip/Timeout;
    .locals 1

    #@0
    .prologue
    .line 3
    sget-object v0, Ljavax/sip/Timeout;->$VALUES:[Ljavax/sip/Timeout;

    #@2
    return-object v0
.end method
