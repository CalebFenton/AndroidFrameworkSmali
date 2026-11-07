.class public final enum Landroid/icu/text/MessagePattern$Part$Type;
.super Ljava/lang/Enum;
.source "MessagePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePattern$Part;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/MessagePattern$Part$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum whitelist test-api ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum whitelist test-api ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum whitelist test-api ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum whitelist test-api ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum whitelist test-api ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum whitelist test-api ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum whitelist test-api ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum whitelist test-api ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum whitelist test-api ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum whitelist test-api INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum whitelist test-api MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum whitelist test-api MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum whitelist test-api REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum whitelist test-api SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/MessagePattern$Part$Type;
    .registers 14

    .line 588
    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v6, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v8, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v9, Landroid/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v10, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v11, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v12, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v13, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    filled-new-array/range {v0 .. v13}, [Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 597
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string v1, "MSG_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    .line 605
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string v1, "MSG_LIMIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    .line 612
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string v1, "SKIP_SYNTAX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    .line 618
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string v1, "INSERT_CHAR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    .line 625
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string v1, "REPLACE_NUMBER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    .line 635
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string v1, "ARG_START"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    .line 641
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string v1, "ARG_LIMIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    .line 645
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string v1, "ARG_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    .line 650
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string v1, "ARG_NAME"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    .line 655
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string v1, "ARG_TYPE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

    .line 660
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string v1, "ARG_STYLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    .line 665
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string v1, "ARG_SELECTOR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    .line 671
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string v1, "ARG_INT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    .line 678
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string v1, "ARG_DOUBLE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    .line 588
    invoke-static {}, Landroid/icu/text/MessagePattern$Part$Type;->$values()[Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->$VALUES:[Landroid/icu/text/MessagePattern$Part$Type;

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

    .line 588
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$Part$Type;
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

    .line 588
    const-class v0, Landroid/icu/text/MessagePattern$Part$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part$Type;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/MessagePattern$Part$Type;
    .registers 1

    .line 588
    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->$VALUES:[Landroid/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v0}, [Landroid/icu/text/MessagePattern$Part$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/MessagePattern$Part$Type;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api hasNumericValue()Z
    .registers 2

    .line 686
    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq p0, v0, :cond_b

    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
