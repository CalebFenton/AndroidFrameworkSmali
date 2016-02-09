.class public final enum Ljavax/sip/DialogState;
.super Ljava/lang/Enum;
.source "DialogState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/sip/DialogState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/sip/DialogState;

.field public static final enum CONFIRMED:Ljavax/sip/DialogState;

.field public static final enum EARLY:Ljavax/sip/DialogState;

.field public static final enum TERMINATED:Ljavax/sip/DialogState;

.field public static final _CONFIRMED:I

.field public static final _EARLY:I

.field public static final _TERMINATED:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 4
    new-instance v0, Ljavax/sip/DialogState;

    #@5
    const-string/jumbo v1, "EARLY"

    #@8
    invoke-direct {v0, v1, v2}, Ljavax/sip/DialogState;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    #@d
    .line 5
    new-instance v0, Ljavax/sip/DialogState;

    #@f
    const-string/jumbo v1, "CONFIRMED"

    #@12
    invoke-direct {v0, v1, v3}, Ljavax/sip/DialogState;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    #@17
    .line 6
    new-instance v0, Ljavax/sip/DialogState;

    #@19
    const-string/jumbo v1, "TERMINATED"

    #@1c
    invoke-direct {v0, v1, v4}, Ljavax/sip/DialogState;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@21
    .line 3
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Ljavax/sip/DialogState;

    #@24
    sget-object v1, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Ljavax/sip/DialogState;->$VALUES:[Ljavax/sip/DialogState;

    #@32
    .line 8
    sget-object v0, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    #@34
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    #@37
    move-result v0

    #@38
    sput v0, Ljavax/sip/DialogState;->_EARLY:I

    #@3a
    .line 9
    sget-object v0, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    #@3c
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    #@3f
    move-result v0

    #@40
    sput v0, Ljavax/sip/DialogState;->_CONFIRMED:I

    #@42
    .line 10
    sget-object v0, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@44
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    #@47
    move-result v0

    #@48
    sput v0, Ljavax/sip/DialogState;->_TERMINATED:I

    #@4a
    .line 3
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

.method public static getObject(I)Ljavax/sip/DialogState;
    .locals 4
    .param p0, "state"    # I

    #@0
    .prologue
    .line 14
    :try_start_0
    invoke-static {}, Ljavax/sip/DialogState;->values()[Ljavax/sip/DialogState;

    #@3
    move-result-object v1

    #@4
    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 15
    :catch_0
    move-exception v0

    #@8
    .line 16
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Invalid dialog state: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/sip/DialogState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3
    const-class v0, Ljavax/sip/DialogState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/sip/DialogState;

    #@8
    return-object v0
.end method

.method public static values()[Ljavax/sip/DialogState;
    .locals 1

    #@0
    .prologue
    .line 3
    sget-object v0, Ljavax/sip/DialogState;->$VALUES:[Ljavax/sip/DialogState;

    #@2
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    #@0
    .prologue
    .line 22
    invoke-virtual {p0}, Ljavax/sip/DialogState;->ordinal()I

    #@3
    move-result v0

    #@4
    return v0
.end method
